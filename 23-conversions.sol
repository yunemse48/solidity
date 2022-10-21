// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Conversions {

    uint x = 2; // == uint256 x = 2;

    // conversion to smaller sizes costs higher order bits (msb)
    uint32 public a = 0x12345678; 
    uint16 public b = uint16(a); // b = 0x5678

    // conversion to larger sizes adds padding bits to the left (msb)
    uint16 public c = 0x1234;
    uint32 public d = uint32(c); // b = 0x00001234; 

    // conversion to smaller sizes costs higher order data
    bytes2 public e = 0x1234;
    bytes1 public f = bytes1(e); // f = 0x12;

    // conversion to larger sizes adds padding bits to the right
    bytes2 public g = 0x1234;
    bytes4 public h = bytes4(g); // h = 0x12340000;

    function returnValue() public view returns (bytes4) {
        return bytes4(d);
    }
}