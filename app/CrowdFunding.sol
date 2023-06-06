// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CrowdFunding{
    mapping(address=>uint) public contributors;
    address public admin;
    uint public min_contribution;
    uint public deadline;
    uint public target;
    uint public raised_amount;
    uint public total_contributors;
    struct Request{
        string description;
        address payable recipient;
        uint value;
        bool completed;
        uint noOfVoters;
        mapping(address=>bool) voters;
    }
    mapping(uint=>Request) public requests;
    uint public numRequests;
    constructor(uint _target, uint _deadline){
        admin = msg.sender;
        target = _target;
        deadline = block.timestamp+_deadline;
        min_contribution = 100 wei;
    }
    function sendEth() public payable{
        require(block.timestamp < deadline, "Deadline passed!!");
        require(msg.value >= min_contribution, "Minimum contribution is 100 wei!!");
        if(contributors[msg.sender] == 0){
            total_contributors++;
        }
        contributors[msg.sender] += msg.value;
        raised_amount += msg.value;
    }
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    function refund() public{
        require(block.timestamp < deadline && raised_amount < target, "Refund not available!!");
        require(contributors[msg.sender] > 0, "Not a contributor to get refund!!S");
        address payable user = payable(msg.sender);
        user.transfer(contributors[msg.sender]);
        contributors[msg.sender] = 0;
    }
}