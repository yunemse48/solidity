// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Owner {
    
    address owner;

    constructor () {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    modifier costs (uint _price) {
        require(msg.value >= _price);
        _;
    }
}

contract Register is Owner {

    mapping (address => bool) registeredAddresses;
    uint price;

    constructor (uint _initialPrice) {
        price = _initialPrice;
    }

    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    function changePrice(uint _newPrice) public onlyOwner {
        price = _newPrice;
    }
}