// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract WorkerRole {
    string public submitWork = "Submit";

   
}

contract ClientRole {
    string public createProject = "Create";


}

contract Freelancer is WorkerRole, ClientRole {
    function getData() public view returns (string memory, string memory) {
        return (submitWork, createProject); 
    }
}