// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Assert{
    function subtract(uint num1, uint num2) public pure returns(uint){
        uint sub;
        sub = num1 - num2;
        assert(sub >= 0);
        return sub;
    }
}