// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Lottery{
    address public admin;
    address payable[] public participants;
    address[] public winnerList;
    constructor(){
        admin = msg.sender;
    }
    receive() external payable{
        require(msg.value >= 1 ether, "Minimum 1 ETH to participate");
        participants.push(payable(msg.sender));
    }
    function getBalance() public view returns(uint){
        require(msg.sender == admin, "Only admin can check balance");
        return address(this).balance;
    }
    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, participants.length)));
    }
    function selectWinner() public{
        require(msg.sender == admin, "Only admin can select winner");
        require(participants.length >= 3, "Must be atleast 3 participants");
        uint r = random();
        address payable winner;
        uint index = r % participants.length;
        winner = participants[index];
        winner.transfer(getBalance());
        winnerList.push(winner);
        participants = new address payable[](0);
    }
}