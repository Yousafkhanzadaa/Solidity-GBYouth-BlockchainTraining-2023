// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library FuncLibrary {
    function exponential(uint256 a, uint256 b) public pure returns (uint256) {
        return a**b;
    }
      function sum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
      function difference(int256 a, int256 b) public pure returns (int256) {
        return a - b;
    }

}



contract ConsumeLibrary {
    function GetExponential(uint256 firstVal, uint256 secondVal)
        public
        pure
        returns (uint256)
    {
        return FuncLibrary.exponential(firstVal, secondVal);
    }

     function GetSum(uint256 firstVal, uint256 secondVal)
        public
        pure
        returns (uint256)
    {
        return FuncLibrary.sum(firstVal, secondVal);
    }

     function GetDifference(int256 firstVal, int256 secondVal)
        public
        pure
        returns (int256)
    {
        return FuncLibrary.difference(firstVal, secondVal);
    }


}
