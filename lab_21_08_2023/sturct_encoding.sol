// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StructEncoding {
    struct Data {
        string name;
        string degree;
        uint256 age;
    }

    function encode() public pure returns (bytes memory) {
        Data memory userdata = Data("uosuf", "lsduf", 32);
        return (abi.encode(userdata));
    }
}
