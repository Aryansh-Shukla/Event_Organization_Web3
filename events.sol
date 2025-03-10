// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Events{
    struct Event{
        address organizer;
        string name;
        uint date;
        uint price;
        uint ticketCount;
        uint ticketRemain;
    }
    mapping(uint=>Event) public events;
    mapping(address=>mapping(uint=>uint)) public tickets;
    uint public nextId;

    function createEvent(string memory name, uint date, uint price, uint ticketCount) external{
        require(date>block.timestamp, "you can organize event for future date");
        require(ticketCount>0,"you can organize event only if you create more than 0 tickets");

        events[nextId]=Event(msg.sender,name,date,price,ticketCount,ticketCount);
        nextId++;
    }

    function buyTicket(uint id, uint quantity) external payable{
        require(events[id].date!=0,"this event does not exist");
        require(block.timestamp<events[id].date,"event has already occured");
        Event storage _event = events[id];
        require(msg.value==(_event.price*quantity),"ethers not enough");
        require(_event.ticketRemain>=quantity,"not enough tickets");
        _event.ticketRemain-=quantity;
        tickets[msg.sender][id]+=quantity;
    }

    function transferTicket(uint id, uint quantity, address to) external{
        require(events[id].date!=0,"this event does not exist");
        require(block.timestamp<events[id].date,"event has already occured");
        require(tickets[msg.sender][id]>=quantity,"you do not have enough tickets");
        tickets[msg.sender][id]-=quantity;
        tickets[to][id]+=quantity;
    }
}