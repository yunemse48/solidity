// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Loop {
    uint [] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function validateMultiple(uint _num, uint _multiple) public pure returns (bool) {
        if (_num % _multiple == 0) {
            return true;
        } else {
            return false;
        }
    }

    function checkMultiples(uint _mult) public view returns (uint) {
        uint [] memory _numbers = numbers;
        uint count = 0;

        for (uint i = 0; i < _numbers.length; i++) {
            if (validateMultiple(_numbers[i], _mult)) {
                count++;
            }
        }

        return count; 
    } 
}