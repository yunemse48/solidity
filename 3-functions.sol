// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Functions {
    /*
    function remoteCall(bool isClosed) public returns(string) {

    }
    */
    
    function addValues() public view returns(uint) {
        uint a = 1;
        uint b = 4;
        uint total = a + b;
        return total;
    }

    function multiplyCalculator(uint x, uint y) public view returns(uint) {
        uint result = x * y;
        return result;
    }
}