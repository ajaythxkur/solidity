// SPDX-License-Identifier: GPL - 3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract local{
    function store() pure public returns(uint){
        uint age=22; //stored in stack
        return age;
    }
}