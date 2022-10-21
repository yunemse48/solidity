// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;


contract Allowance {
 
    mapping(address => mapping(address => uint)) public allowance;
    
    //this function removes the spenders allowance
    function remove(address _addrOwner, address _addrSpender) public {
        delete allowance[_addrOwner][_addrSpender];
    }

    function pairUp(address _addrOwner, address _addrSpender, uint _allowance) public {
        allowance[_addrOwner][_addrSpender] = _allowance;
    }

    function getAllowance(address _addrOwner, address _addrSpender) public view returns (uint) {
        return allowance[_addrOwner][_addrSpender];
    }
}