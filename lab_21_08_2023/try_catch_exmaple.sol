// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleDivision {
    function divide2Nums(uint256 numerator, uint256 denominator)
        external
        pure
        returns (uint256)
    {
        require(denominator != 0, "0 can not be divide");
        return numerator / denominator;
    }
}

contract TryCatchExample {
    SimpleDivision public simpleDivision;

    constructor(address _simpleDivisionAddress) {
        simpleDivision = SimpleDivision(_simpleDivisionAddress);
    }

    function tryDivision(uint256 numerator, uint256 denominator)
        external
        view
        returns (uint256 result, string memory error)
    {
        try simpleDivision.divide2Nums(numerator, denominator) returns (
            uint256 _result
        ) {
            result = _result;
            error = "No error";
            return (result, error);
        } catch Error(string memory _error) {
            result = 0;
            error = _error;
            return (result, error);
        } catch {
            result = 0;
            error = "Unknown error";
            return (result, error);
        }
    }
}
