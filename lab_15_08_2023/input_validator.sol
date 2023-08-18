// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract InputValidator {

    mapping(address => uint) balances;

    function senderBalance() public {
        balances[msg.sender] = 10000;
    }

    function transfer(uint256 amount, address recipient) public {
        require(amount > 0 && amount < 100, "Amount not varified");
        balances[recipient] = amount;
    }
}