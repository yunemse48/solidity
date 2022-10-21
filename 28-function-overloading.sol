// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract FunctionOverload {

    function sum(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function sum(uint a, uint b, uint c) public pure returns (uint) {
        return a + b + c;
    }

    function getSumofTwo() public pure returns (uint) {
        return sum(1, 3);
    }

    function getSumofThree() public pure returns (uint) {
        return sum(1, 3, 5);
    }
}