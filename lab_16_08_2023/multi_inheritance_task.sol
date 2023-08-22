// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract BaseUser {
    address myAddress = msg.sender;
    event emitAdr(address myAddress);

    function Print() public virtual {
        emit emitAdr(myAddress);
    }
}

contract Modrator is BaseUser {
    string name = "Yousuf";
    event emitName(string name);

    function Print() public override virtual {
        emit emitName(name);
    }
}

contract Admin is Modrator {
    uint pin = 1245;
    event emitPin(uint mypin);

    function Print() public override virtual {
        emit emitPin(pin);
    }
}