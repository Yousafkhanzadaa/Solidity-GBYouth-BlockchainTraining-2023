// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Public{
    string public publicmsg = "Public Variable is Called";
    function getpublic() public view returns(string memory){
        return publicmsg;
    }
}

contract Public2 is Public {
    // inherits all the public functions and state variablesß
}