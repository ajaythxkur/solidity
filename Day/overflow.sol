// SPDX-License-Identifier: GPL - 3.0

pragma solidity 0.5.0;

contract integers{
    // -2^(n-1) to 2^(n-1)-1
    uint8 public money=255;
    function setter() public{
        money = money+1;
    }
}