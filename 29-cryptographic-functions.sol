// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Cryptographic {

    function generateHash() external view returns (uint) {
        return uint((keccak256(abi.encodePacked(block.timestamp, block.number, block.difficulty))));
    }

    function generateRandom(uint _range) external view returns (uint) {
        return ((uint(keccak256(abi.encodePacked(block.timestamp, block.number, block.difficulty))) % _range));
    }
}