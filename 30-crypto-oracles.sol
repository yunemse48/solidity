// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Oracle {
    address admin;
    uint public rand;

    constructor () {
        admin = msg.sender;
    }

    function feedRand(uint _rand) public {
        require(msg.sender == admin, "The caller is not admin.");
        rand = _rand;
    }
}

contract Cryptographic {

    Oracle oracle;

    constructor (address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }

    function generateHash() external view returns (uint) {
        return uint((keccak256(abi.encodePacked(block.timestamp, block.number, block.difficulty))));
    }

    function generateRandom(uint _range) external view returns (uint) {
        return ((uint(keccak256(abi.encodePacked(oracle.rand(), block.timestamp, block.number, block.difficulty))) % _range));
    }
}