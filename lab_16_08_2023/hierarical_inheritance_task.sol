// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Car {
    uint model;
    uint make;

    function setModelAndMake() public virtual  {
        model = 2012;
        make = 2930;
    }
}

contract ElectricCar is Car {
   string batteryCapacity = "283929W";
    function setModelAndMake() public override virtual {
        model = 2030;
        make = 2903;
    }
 }

contract HybridCar is Car {
    string gasTankCapacity = "82939 Gallen";
     function setModelAndMake() public override virtual {
        model = 2020;
        make = 2903;
    }
 }