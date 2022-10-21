// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Receive {

    event Log(uint _gas);

    receive() external payable {}

    fallback() external payable {
        emit Log(gasleft());
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract Send {

    function useTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function useSend(address payable _to) public payable {
        bool isSent = _to.send(msg.value);
        require(isSent, "Transaction failed! Ether couldn't be sent.");
    }

    function useCall(address payable _to) public payable {
        (bool isSent, ) = _to.call{value: msg.value}("");
        require(isSent, "Transaction failed! Ether couldn't be sent.");
    }
}