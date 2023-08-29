
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface Token {
 function transfer(address to, uint256 amount) external; 
}

contract TokenContract is Token {
    mapping (address=>uint256) transfering;
    function transfer(address to, uint256 amount) public {
        transfering[to] = amount;
    }
}