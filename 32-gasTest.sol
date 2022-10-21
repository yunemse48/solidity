// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Test {

    uint[] public postArray;
    uint[] public preArray;
    uint[] public unsafeArray;

    function unsafe_inc(uint x) private pure returns (uint) {
        unchecked { return x + 1; }
    }

    function postInc() public returns (uint[] memory ){
        for (uint i = 0; i < 100; i++) {
            postArray.push(i);
        }

        return postArray;
    }

    function preInc() public returns (uint[] memory ){
        for (uint i = 0; i < 100; ++i) {
            preArray.push(i);
        }

        return preArray;
    }

    function unsafeInc() public returns (uint[] memory) {
        for (uint i = 0; i < 100; i = unsafe_inc(i)) {
            unsafeArray.push(i);
        }

        return unsafeArray;
    }
}