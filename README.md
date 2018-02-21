# Blockchain Development Environment Setup

Steps to setup Ethereum and HyperLedger Fabric development Environments on MacOs 10.11 +. 
These instructions will get you a quick way to setup your own local Blockchain Environments on MacOs for development and testing purposes.

## Ethereum

### Recap before we start
    
    1. Smart Contract - an executable script/program
    2. Solidity - programming language for Smart Contract
    3. EVM（Ethereum Virtual Machine）- to run Smart Contracts
    4. GETH (Go Ethereum) - written in GO language. Acts as control center interface to connect to Blockchain.
    5. GAS - a measurement in ethereum to calculate how much resources cost for the operation (execute contract or perform transaction)
    6. Dapp (Decentralized App) - consider blockchain is an untemperated database, Dapp is Smart Contract + Blockchain + Front End Html, CSS
    7. Truffle - A Dapp development framework for testing Ethereum framework.
    8. Ganache - Part of Truffle framework. It creates a virtual Ethereum blockchain and generates some fake accounts.
    9. Ethereum Wallet - A powerful tool. Ethereum’s own wallet, grants users access to the world of decentralized applications, and deploy smart contracts
    10. MetaMask - Ethereum Browser, allow you to interact with smart contracts and Dapp, but cannot deploy smart contracts.
    
### Solidity

There are two ways to complie solidity code. 

  a) Browser-Solidity: open [Browser-Solidity](http://remix.ethereum.org/). On top left, click on + to open create new solidity file, then on top right, click on Compile.
  
  b) Install solidity compiler using npm. 

```
npm install -g solc
solc --version
solc mySmartContract.sol
```

### Geth

installation using HomeBrew. For Geth commands, visit [Geth Help](https://github.com/ethereum/go-ethereum/wiki/Command-Line-Options).

```
brew tap ethereum/ethereum
brew install ethereum
```

**Check point**: launch Geth to verify your GETH installation using testnet or ropsten blockchains

```
geth --datadir testNet --dev console 2>> test.log
```
![wispochains geth](https://github.com/rosecondon/wispochains/blob/master/img/geth.png)

### Truffle

installation using npm. Visit [Truffle](http://truffleframework.com) for more details.

```
> npm install -g truffle
> truffle --version
```

### Ganache

Installation using npm.

```
npm install -g ganache-cli
```
Launch Ganache.

```
ganache-cli -p 7545
```
![wispochains geth](https://github.com/rosecondon/wispochains/blob/master/img/ganache.png)

### Ethereum Wallet
To access [Ethereum Wallet](https://github.com/ethereum/mist/releases), you need to download it onto desktop. The downside is this may take a while, since the wallet has to sync with every node in the blockchain.

![wispochains geth](https://github.com/rosecondon/wispochains/blob/master/img/ethereum_wallet.png)

### MetaMask

Install it as a Google Chrome Extension Plus, Start from [Here](https://metamask.io)

You can access to Ethereum blockchain to view your accounts
![wispochains geth](https://github.com/rosecondon/wispochains/blob/master/img/metaMask_Acct.png)

## HyperLedger Fabric

### Docker

Install [Docker](https://docs.docker.com/install/) - Docker version 17.03.0-ce or greater is required

```
docker --version
```
It should aslo have docker compose installed, required 1.8 and up
```
docker-compose --version
```
### set up $GOPATH - Go programming language 

Fabric requires 1.7.x for many of its components, add two lines below to .bash_profile or .bashrc

```
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
. ~/.bash_profile
```
### Install Node.js and NPM
Node: requires 8.9 or higher (note version 9 is not supported)
npm: v5.x

```
npm install -g grunt-cli
brew install node
```
To upgrade NPM
```
npm install npm@3.10.10 -g
```

### Install [cURL](https://curl.haxx.se/download.html) 
```
brew install curl
```

