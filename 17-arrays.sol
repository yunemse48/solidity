// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract LearnArrays {

    constructor () {
        fillArray;
    }

    // several ways to initialise an array
    uint[] public arrayOne;
    uint[] public arrayTwo = [1, 3, 5, 7];
    uint[10] public arrayThree;     // Fixed sized array, all elements initialize to 0

    function addValue(uint number) public {
        arrayOne.push(number); // appends user provided value to arrayOne
    }

    function removeLastElement() public {
        arrayTwo.pop(); // removes last item from arrayTwo 
    }

    function getLength() public view returns (uint) {
        return arrayThree.length;
    }

    function fillArray() internal {
        arrayThree = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    }

    function removeArbitraryElement(uint index) public {
        delete arrayThree[index]; // removes the element in the specified index
    }
    /* NOTE
    delete function does not actually delete the specified item, but it makes the item 0. 
    That means the length of the array does not change after an element is deleted. See below:
    arr = [1, 2, 3] -->  delete arr[2] --> arr = [1, 2, 0]
    */

}

contract ArrayExercise {
    uint[] public changeArray;

    function fillArray() public {
        for (uint i = 1; i <5; i++ ) {
            changeArray.push(i);
        }
    }

    function getArray() public view returns (uint[] memory) {
        return changeArray;
    } 

    function removeItem(uint index) public {
        // Since delete function makes the chosen value zero, we at first assign the last item
        // to that index, then pop the last item from the array. 
        // This works only if the sequence is not important.
        changeArray[index] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }
}