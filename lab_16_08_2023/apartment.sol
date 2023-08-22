// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Apartment {
    uint internal tenantcount;

    function joinApartment() external {
        tenantcount += 1;
    }

}

contract Tenant is Apartment {
    constructor() {
        // external functions are can not be called in in childs and in main (Paremtn) contract
        // joinApartment();
    }

    function getter() internal view returns (uint) {
        return tenantcount;
    }
}