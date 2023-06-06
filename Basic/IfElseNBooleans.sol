// SPDX-License-Identifier: GPL - 3.0
pragma solidity >= 0.5.0 < 0.9.0;
contract IfElse{
    function checkNumber(int a) public pure returns(string memory){
        string memory value;
        if(a>0){
            value = "Greater than zero";
        }else if(a < 0){
            value = "Less than zero";
        }else{
            value="Equal to zero";
        }
        return value;
    }
     bool public isTrue=true; //default false
    function check(uint a) public returns(bool){
        if(a>100){
            isTrue = true;
        }else{
            isTrue=false;
        }
        return isTrue;
    }
}