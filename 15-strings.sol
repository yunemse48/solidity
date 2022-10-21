// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Strings {
    string favouriteColour;

    function setColour(string memory _colour) public {
        favouriteColour = _colour;
    }

    function returnColour() public view returns (string memory) {
        return favouriteColour;
    }

    function getLength() public view returns (uint) {
        bytes memory temp = bytes(favouriteColour);
        return temp.length;
    }
}