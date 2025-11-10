## **Blockchain-Enabled Password Vault**

## **Abstract**
This project is a decentralized password manager implemented on Ethereum. It integrates biometric authentication, decentralized identity (DID), zero-knowledge proofs (ZKP), and Shamir Secret Sharing for secure storage, authentication, and recovery of user credentials. The system is designed to avoid central points of failure by distributing encrypted credential shares across the blockchain while enabling privacy-preserving authentication.

## **Features**
- Decentralized encrypted credential storage on the Ethereum blockchain.
- Biometric authentication (fingerprint, facial, retina) with local hashing.
- Decentralized Identity (DID) to provide self-sovereign identity control.
- Zero-Knowledge Proofs (zk-SNARKs) for authentication without disclosing sensitive data.
- Shamir Secret Sharing for secure password recovery without a single point of compromise.
- Full-stack DApp: Solidity smart contract, Hardhat development environment, Node.js/Express backend, and React frontend.

## **Tech Stack**
- Blockchain: Solidity, Hardhat, Ethereum (local testnet)
- Backend: Node.js, Express, Ethers.js
- Frontend: React, HTML, CSS
- Security: Local biometric hashing, ZKPs, Shamir Secret Sharing
- Environment: dotenv



## **Setup Instructions**

### **1. Clone the Repository**
```bash
git clone https://github.com/your-username/password-vault.git
```

```bash
cd password-vault
```

### 2. Smart Contract Setup

```bash
cd smart-contract
npm install
npx hardhat node
```
### In a separte Terminal:
```bash
npx hardhat run scripts/deploy.js --network localhost
```
Save the deployed contract address into .env as VAULT_ADDRESS.

3. Backend Setup
```bash
cd ../backend
npm install
```

Create a .env file:

```ini
RPC_URL=http://127.0.0.1:8545
PRIVATE_KEY=<Your-Private-Key-Here>
VAULT_ADDRESS=<Deployed-Contract-Address>
```

Run the server:
```bash
node server.js
The backend runs on: http://localhost:3000
```

4. Frontend Setup
```bash
cd ../frontend
npm install
npm run dev
```

Open http://localhost:5173 in your browser.



