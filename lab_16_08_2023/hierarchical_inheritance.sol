// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Base {
    uint public x;

    function setX(uint _x) public {
        x = _x; 
    }
}

contract DerivedA is Base {
    function getX() public view returns (uint) {
        return x; 
    } 
 }

contract DerivedB is Base {
    function getXTimesTwo() public view returns (uint) {
        return x * 2; 
    }
 }

 contract DrivedC is Base {
     function getXTimesThree() public view returns (uint) {
        return x * 3; 
    }
 }