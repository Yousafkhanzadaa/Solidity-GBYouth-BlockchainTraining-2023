// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract VotingSystem {

    mapping(uint256 => bool) voteCollection;
    function vote(uint256 _candidateId) public {
        if (_candidateId == 0 && voteCollection[_candidateId] == true || voteCollection[_candidateId] == false) {
            revert("Condidate is already exist or invalid ID");
        }
        voteCollection[_candidateId] = true;

    }
}