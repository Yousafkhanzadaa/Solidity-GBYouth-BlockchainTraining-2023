// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Base {
    uint public x;

    function setX(uint _x) private {
        x = _x; 
    }
}

contract Derived is Base {
    function getX() public view returns (uint) {
        return x; 
    }
}