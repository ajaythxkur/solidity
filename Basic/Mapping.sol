// SPDX-License-Identifier: GPL - 3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract map{
    mapping(uint=>string) public roll_no;
    function setter(uint keys, string memory value) public{
        roll_no[keys] = value;
    }
     //storage n memory
    string[] public student=['Vijay','Ajay'];
    function mem() public view {
        string[] memory s1=student; //creates copy of array
        s1[0] = "Nugg"; //no effect in student array
    }
    function sto()  public{
        string[] storage s1=student; //s1 holds the address of student and pointed to student that changes the value
        s1[0]="Nugggu"; //value changes in student array
    }
    //mapping in structure
    struct std{
        string name;
        uint class;
    }
    mapping(uint=>std) public data;
    function setStd(uint id, uint _class, string memory _name) public{
        data[id] = std(_name, _class);
    }
    //keys cannot be of types mapping, dynamic arr, enum, struct
    //mapping always stored in contract storage
}