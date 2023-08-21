// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FamilyFortune {
    uint inheritance;

    function addInheritance(uint amount) internal {
        inheritance += amount;
    }
}

contract Heir is FamilyFortune {
    function callParentFunction() public {
        addInheritance(1);
    }
}