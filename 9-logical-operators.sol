// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Logical {
    uint a = 17;
    uint b = 32;

    function multiply() public view returns (uint) {
        require((b > a) && (a != b), "NOOO");
        return a * b;
    } 
}