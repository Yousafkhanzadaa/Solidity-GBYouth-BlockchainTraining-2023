// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract AbiEncodings {
    function encode(address _address, uint256 data)
        public
        pure
        returns (bytes memory)
    {
        return (abi.encode(_address, data));
    }

    function encodePacked(address _address, uint256 data)
        public
        pure
        returns (bytes memory result)
    {
        result = abi.encodePacked(_address, data);
    }

    function encodeWithSelector(address _address, uint256 data)
        public
        pure
        returns (bytes memory result)
    {
        result = abi.encodeWithSelector(
            bytes4(keccak256("encodeWithSelector(address, uint )")),
            _address,
            data
        );
    }

    function encodeWithSignature(address _address, uint256 data)
        public
        pure
        returns (bytes memory result)
    {
        result = abi.encodeWithSignature(
            ("encodeWithSelector(address, uint)"),
            _address,
            data
        );
    }
}
