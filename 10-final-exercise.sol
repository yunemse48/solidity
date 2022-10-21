// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract FinalExercise {
    uint a = 300;
    uint b = 12;
    uint f = 10;

    function finalise() public view returns (uint) {
        uint d = 23;
        if ( a >= b && b > f) {
            d *=d;
            return d - b;
        } else {
            return d;
        }
    }
}