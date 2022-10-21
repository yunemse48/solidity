// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract DecisionMaking {
    uint stakingWallet = 8;

    function airDrop() public view returns (uint) {
        if (stakingWallet == 10) {
            return stakingWallet + 10;
        } else {
            return stakingWallet + 1;
        }
    }
}