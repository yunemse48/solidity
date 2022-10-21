// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract LearnUnits {

    function test() public pure returns (string memory){
        assert(1000000000000000000 wei == 1 ether); // 10^18 wei is 1 eth
        assert(1e18 wei == 1 ether);
        assert(2e18 wei == 2 ether);
        
        assert(1 seconds == 1);
        assert(1 minutes == 60 seconds);
        assert(1 hours == 60 minutes);
        assert(1 hours == 3600 seconds);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);
        
        return "Executed";
    }
}