// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Bank {
    uint private balance = 382;

    function deposit(uint funds) public {
        balance += funds;
    }


}

contract BankUser is Bank{
    function get() public view returns (uint) {
        // we can not get the private function using inheritance.
        
        // return balance;
    }
}