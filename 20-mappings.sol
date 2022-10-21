// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract LearnMappings {
    mapping (address => uint) public wallets;

    function setAddress(address _addr, uint _i) public {
        wallets[_addr] = _i;
    }

    function getValue(address _addr) public view returns (uint) {
        return wallets[_addr];
    }

    function removeAddress(address _addr) public {
        delete wallets[_addr];
    }
}