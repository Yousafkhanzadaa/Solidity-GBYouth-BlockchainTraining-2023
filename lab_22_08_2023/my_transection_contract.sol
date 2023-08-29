// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaymentContract {
    event PaymentReceived(address indexed sender, uint256 amount);

    receive() external payable {
        emit PaymentReceived(msg.sender, msg.value);
    }
}
