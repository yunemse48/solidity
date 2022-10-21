// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Gas {
    uint8 public eight;
    uint96 public nine_six;
    uint256 public two_five_six;

    function assign8() public {
        eight = 1;
    }

    function assign96() public {
        nine_six = 1;
    }
    
    function assign256() public {
        two_five_six = 1;
    }
}