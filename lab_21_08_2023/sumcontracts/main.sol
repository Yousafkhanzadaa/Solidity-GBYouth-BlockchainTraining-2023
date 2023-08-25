// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./expLib.sol";
import "./sum.sol";

contract LibraryClient {
    SumContract public sc = new SumContract();
    function GetExponential(uint256 firstVal, uint256 secondVal)
        public
        pure
        returns (uint256)
    {
        return Explibrary.exponential(firstVal, secondVal);
    }

    function Sum(uint256 firstVal, uint256 secondVal)
        public
        view
        returns (uint256)
    {
        return sc.sum(firstVal, secondVal);
    }
}
