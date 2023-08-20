// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DriverLicense{
    error TooYoung(string message, uint RequiredAge);

    function DriverId(uint age) public pure returns(uint) {
        if (age > 18) {
            revert TooYoung("Too young for driving license", 18);
        }
        return age;
        
    }
}