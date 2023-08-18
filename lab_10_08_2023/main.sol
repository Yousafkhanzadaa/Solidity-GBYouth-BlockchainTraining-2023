 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Events {
    enum Quality {
        Good,
        Moderate,
        Bad
    }
    struct Specs {
        string microprocessor;
        uint RAM;
    }
    event testQuality(Quality, Specs, uint);
    mapping(address => uint) public _balances;
    event Transfer(address, address, uint);
    // define _transfer function，execute transfer logic
    function _transfer(address from, address to, uint256 amount) external {
        _balances[from] = 10000000;     // give some initial tokens to transfer address
        _balances[from] -= amount;      // "from" address minus the number of transfer
        _balances[to] += amount;        // "to" address adds the number of transfer
        // emit event
        emit Transfer(from, to, amount);
    }
}
// pragma solidity ^0.8.17;
// contract Event {
//     // Event declaration
//     // Up to 3 parameters can be indexed.
//     // Indexed parameters helps you filter the logs by the indexed parameter
//     // event Log(address indexed sender, string msg);
//     // event AnotherLog();
//     // function test() public {
//     //     emit Log(msg.sender, "Hello Web3.0");
//     //     emit Log(msg.sender, "It's all about Decentralization");
//     //     emit AnotherLog();
//     // }
//     event Log(address indexed sender, string msg);
//     event custom(string Name , address contractAddress, string Department);
//     event AnotherLog();
//     function test() public {
//         emit Log(msg.sender, "Taha Noor");
//         emit Log(msg.sender, "0x729A9cA78E1f0AeF3014E59104d6C92dECC85810");
//         emit Log(msg.sender, "Blockchain");
//         emit AnotherLog();
//         emit custom("Taha Noor", 0x729A9cA78E1f0AeF3014E59104d6C92dECC85810, "Blockchain");
//     }
// }
// pragma solidity ^0.8.17;
// contract PersonContract {
//     struct PersonInfo {
//         string Name;
//         uint Age;
//         uint ID;
//         address addr;
//     }
//     PersonInfo public P1;
//     event Update(
//         PersonInfo OldValue,
//         PersonInfo NewValue,
//         uint timestamp,
//         uint blockNumber
//     );
//     constructor(string memory Name, uint Age, uint ID, address addr) {
//         P1 = PersonInfo(Name, Age, ID, addr);
//     }
//     function setPersonInfo(string memory Name, uint Age, uint ID, address addr) public {
//         PersonInfo memory OldValue = P1;
//         P1 = PersonInfo(Name, Age, ID, addr);
//         emit Update(OldValue, P1, block.timestamp, block.number);
//     }
// }
// pragma solidity ^0.8.17;
// contract EmittingEvent {
//     event zeroAddressInputted(string msg);
//     constructor(address _initialOwner){
//     if (_initialOwner == 0x0000000000000000000000000000000000000000){
//         emit zeroAddressInputted ("Zero Address inputted on deployment of contract");
//     }
//     }
// }
// pragma solidity ^0.8.17;
// contract NoPrime {
//     uint public num;
//     event PrimeChecker(string, uint);
//     function set(uint _inputNum) public returns (bool is_prime) {
//         uint j = 2;
//         is_prime = true;
//         if (_inputNum == 0  || _inputNum == 1) {
//             is_prime = true;
//         }
//         while (j <= _inputNum / 2) {
//             if (_inputNum % j == 0) {
//                 is_prime = false;
//                 break;
//             }
//             j++;
//         }
//         if (is_prime == true) {
//             emit PrimeChecker("The Number is Prime", _inputNum);
//         }
//         else{
//             emit PrimeChecker("The number is not prime", _inputNum);
//         }
//     }
// }