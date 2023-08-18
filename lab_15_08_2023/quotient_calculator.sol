// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract QuotientCalculator {
    function calculateQuotient(uint denominator, uint numerator) public pure returns(uint){
        require(denominator == 0, "Wrong Denominator");

        return numerator / denominator;

    }

    function calculateQuotientForRevert(uint denominator, uint numerator) public pure returns(uint){
        if (denominator == 0) {
            revert("Wrong Denominator");
        }

        return numerator / denominator;

    }

}