// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Engine {
    uint public hoursePower = 2342;

   
}

contract Transmission {
    string public gearType = "5th";


}

contract Car is Engine, Transmission {
    function getData() public view returns (uint, string memory) {
        return (hoursePower, gearType); 
    }
}