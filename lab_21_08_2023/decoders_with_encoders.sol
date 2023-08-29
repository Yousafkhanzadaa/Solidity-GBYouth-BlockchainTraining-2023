
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract AbiEncodingsAndDecoders {
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
    function decode(bytes memory data)
        public
        pure
        returns (address daddr, uint256 dnum)
    {
        (daddr, dnum) = abi.decode(data, (address, uint256));
    }
}
