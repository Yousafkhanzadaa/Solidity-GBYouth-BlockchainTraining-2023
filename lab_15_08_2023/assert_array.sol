// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract AssertArray {
    uint[] public arr;

    function addElement(uint element) public {
        arr.push(element);
    }

    function removeElement() public {
        assert(arr.length != 0);
        arr.pop();
    }
}