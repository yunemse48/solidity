// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Comparison {

    uint a = 6;
    uint b = 5;

    // Run the function if only a is less than or equal to b
    function bIsGreater() public view returns (bool) {
        require(a <= b, "b should be greater than a!");
        return true;
    }
}