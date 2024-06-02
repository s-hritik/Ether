# Ether

MyToken

This Solidity program defines a simple token contract named "MyToken". It demonstrates the basic functions of mint and burning tokens, as well as storing and retrieving token balance. The purpose of this program is to make understand how to create and manage their own tokens on the Ethereum blockchain.

Description

This program is a smart contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract defines a token named "EARTH" with the abbreviation "ER". It includes functions for mint new tokens, burning existing tokens, and tracking token balance. This program serves as a basic introduction to token creation and management in Solidity.

Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at Remix Ethereum IDE.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:
// code:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    string public Mytoken_Name = "EARTH";
    string public Mytoken_abbrv = "ER";
    uint public total_Supply = 0;

    mapping(address => uint)public balance;

    function mint(address Add , uint Val) public{
        total_Supply += Val;
        balance[Add] += Val;

    }

    function burning(address Add, uint Val) public{
        if(balance[Add] >= Val){
            total_Supply -= Val;
            balance[Add] -= Val;
        }
    }
}

Compiling the Code

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar and then click on the "Compile MyToken.sol" button.

Deploying the Contract

Once the code is compiled, we can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, we can interact with it by using the mint and burning functions.

Minting Tokens: To mint new tokens, enter the address and the amount of tokens we want to mint, then click the "mint" button.
Burning Tokens: To burn existing tokens, enter the address and the amount of tokens we want to burn, then click the "burning" button.
we can also check the total supply of tokens and individual balances using the total_Supply and balance public variables.
