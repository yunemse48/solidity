// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Visibility {

    uint public stateX = 100;

    function x() public view returns (uint) {
        return stateX * 2;
    }

    function y() external view returns (uint) {
        return stateX / 10;
    }

    function z() internal {
        stateX += 1;
    }

    function w() private {
        stateX -= 1;
    }

    function internalCall() external returns (uint) {
        z();
        w();
        // y() is not possible because the function y is accessible only from outside
        return stateX;
    }
}