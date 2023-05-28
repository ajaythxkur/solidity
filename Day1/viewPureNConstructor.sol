    // SPDX-License-Identifier: GPL - 3.0

    pragma solidity >= 0.5.0 < 0.9.0;

    contract viewPure{
        uint public count;
        constructor(uint newCount){
            count = newCount;
        }
        // uint public age=22;
        // function getter() public pure returns(uint){
        //     uint roll=100;
        //     return roll;
        // }
    }