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
    //byte arrays 1 byte = 8 bits, 1 hexadecimal digit = 4 bits
    // everything that will be stored in the byte array will be in the form of hexadecimal digits
    bytes3 public b1;  //3 bytes array = 24 bits
    bytes2 public b2; //2 bytes array = 16 bits
    function setter() public{
        b1='abc';
        b2='ab';
    }
    bytes public arrbyte="abc";
    
    function pushByteElement() public{
        arrbyte.push("d");
    }
    function getByteElement(uint i) public view returns(bytes1){
        return arrbyte[i];
    }
    function getByteLen() public view returns(uint){
        return arrbyte.length;
    }
}