    // SPDX-License-Identifier: GPL - 3.0

    pragma solidity >= 0.5.0 < 0.9.0;

    contract fun{
        uint age=22;

        function getter() public view returns(uint){
            return age;
        }

        function setter(uint newAge) public {
            age = newAge;
        }
    }