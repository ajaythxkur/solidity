// SPDX-License-Identifier: GPL - 3.0
pragma solidity >= 0.5.0 < 0.9.0;
contract Array{
    uint[4] public arr = [10,20,30,40];
    function setter(uint index, uint value) public{
        arr[index]=value;
    }
    function length() public view returns(uint){
        return arr.length;
    }
    uint[] public dynArr;
    function pushElement(uint item) public {
        dynArr.push(item);
    }
    function len() public view returns(uint){
        return dynArr.length;
    }
    function popElement() public {
        dynArr.pop();
    }
}