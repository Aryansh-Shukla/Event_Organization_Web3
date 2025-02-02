# 🎟️ Events Smart Contract  

![Solidity](https://img.shields.io/badge/Solidity-%5E0.5.0-blue)  
A decentralized event management system on Ethereum, allowing users to **create events**, **buy tickets**, and **transfer tickets** securely using smart contracts.  

---

## 📌 Features  

✔️ **Create Events** – Organizers can create events with a name, date, price, and ticket count.  
✔️ **Buy Tickets** – Users can buy event tickets securely using **Ether (ETH)**.  
✔️ **Transfer Tickets** – Ticket holders can transfer tickets to other users.  
✔️ **Secure & Decentralized** – Ensures trustless ticketing using blockchain technology.  

---

## 🛠️ Technologies Used  

- **Solidity** (`>=0.5.0 <0.9.0`)  
- **Ethereum Blockchain**  
- **Remix IDE / Hardhat / Truffle** (for deployment & testing)  

---

## 📜 Smart Contract Overview  

### **🔹 Event Structure**
| Field          | Description |
|---------------|------------|
| **`organizer`**   | Address of the event creator |
| **`name`**        | Name of the event |
| **`date`**        | Timestamp of the event |
| **`price`**       | Ticket price in **ETH** |
| **`ticketCount`** | Total tickets available |
| **`ticketRemain`** | Remaining tickets |

---

## 📂 Deployment Instructions  

1️⃣ Open [Remix IDE](https://remix.ethereum.org/)  
2️⃣ Copy & paste the `events.sol` file.  
3️⃣ Compile the contract using **Solidity 0.5.x**  
4️⃣ Deploy to **Remix VM (Local), Goerli, Sepolia, or Mainnet**.  

---

## ⚠️ Security Considerations  
🔹 Always **test the contract** on a testnet before deploying to **Ethereum Mainnet**.  
🔹 Double-check **event dates and prices** before creating an event.  
🔹 Ensure the **recipient address** is correct before transferring tickets.  

---

## 📜 License  
**SPDX-License-Identifier: GPL-3.0**  
This project is licensed under the **GNU General Public License v3.0**.
