// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Parent {
    uint parentValue;
}

contract Child is Parent {
    uint childValue;

    event PrintChildParentValue(uint childValue, uint ParentValue);

    function printValuesUsingLog() public {
        emit PrintChildParentValue(childValue, parentValue);
    }
}