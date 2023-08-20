// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract atm {
    // Custom Errors
    error InsufficientFunds(string errorMessage, uint cashAvailable);
    
    // State variables
    uint public CashAvailable = 1222;

    // money withdraw functions
    function MoneyWithdraw(uint withdrawAmount) public {
        if (withdrawAmount <= CashAvailable) {
            CashAvailable -= withdrawAmount;
        } else {
            revert InsufficientFunds("Insufficient Funds", CashAvailable);
        }
    }

    // refill function
    function RefillFunds(uint RefillAmount) public {
        CashAvailable += RefillAmount;
    }

}sssss