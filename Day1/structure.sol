// SPDX-License-Identifier: GPL - 3.0
pragma solidity >= 0.5.0 < 0.9.0;

    struct student{
        uint roll_no;
        string name;
    }
contract demo{
    student public s1;
    constructor(uint _roll, string memory _name){
        s1.roll_no = _roll;
        s1.name = _name;
    }
    function changeValue(uint _roll, string memory _name) public{
        student memory new_student=student({
            roll_no: _roll,
            name: _name
        });
        s1=new_student;
    }
}