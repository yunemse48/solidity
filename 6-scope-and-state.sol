// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract C {
    
    uint public data = 10; // state variable

    function x() public pure returns (uint) {
        // data = 30; // local variable --> not view or not pure
        // return data + (25 - data);  --> view
        uint newData = 25; // --> pure because it neither writes to a state variable nor reads from a state variable
        return newData;
    }

    function y() public view returns (uint) {
        return data;
    }
}