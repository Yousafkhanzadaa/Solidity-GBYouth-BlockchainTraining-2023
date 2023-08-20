// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract UniversityAdmission {
    enum Department { Civil, Mechanic, Electrical, Software}

    mapping(uint => bool) admissionStatus;
    mapping(uint => Department) choosenDepartment;

    function setAdmissionStatus(uint studentID, bool hasPassed) public {
        admissionStatus[studentID] = hasPassed;
    }
    
    function chooseDepartment(uint studentID, Department department) public {
        assert(admissionStatus[studentID] == true);
        choosenDepartment[studentID] = department;
    }


}