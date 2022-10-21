// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract LedgerBalance {

    mapping(address => uint) public wallets;

    function updateBalance(uint _balance) public {
        wallets[msg.sender] = _balance;
    }

    function getBalance() public view returns (uint) {
        return wallets[msg.sender];
    }
}

// calling the contract above from another contract

contract Caller {
    
    uint public balance;
    
    function update() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updateBalance(30); 
        balance = ledgerBalance.getBalance();
    }
}