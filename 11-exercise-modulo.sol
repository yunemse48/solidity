// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Modulo {

    function calculateModulo(uint a, uint b) public pure returns (uint) {
        require(b != 0, "Divider cannot be zero!");
        return a % b;
    }
}