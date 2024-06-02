
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract Mytoken{
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

