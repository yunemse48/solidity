// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract LoopExercise {

    uint [30] longList;
    uint [] numbersList = [1, 4, 34, 56];

    function createLongList() internal {
        for (uint i = 0; i < 30; i++) {
            longList[i] = i + 1;
        }
    } 

    function checkElement(uint _number) public view returns (bool) {
        bool isIncluded = false;
        
        for (uint i = 0; i < numbersList.length; i++) {
            if (_number == numbersList[i]) {
                isIncluded = true;
            }
        }

        return isIncluded;
    }

    function findEvenNumbers() public returns (uint) {
        createLongList();
        uint count = 0;
        uint [30] memory newList = longList;
        for (uint i = 0; i < 30; i++) {
            if (newList[i] % 2 == 0) {
                count++;
            }
        }

        return count;
    }
}