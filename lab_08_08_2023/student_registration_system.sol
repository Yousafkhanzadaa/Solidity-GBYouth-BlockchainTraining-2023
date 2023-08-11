// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StudentRegistrationSystem {
    
    enum Department {
        Artificial_Intelligence,
        Blockchain,
        E_Commerce,
        Arts
    }
    
    enum Status {
        Enrolled,
        NotEnrolled,
        Graduated,
        Expelled
    }
    
    struct Student {
        string name;
        uint age;
        uint registrationDate;
        Department department;
        Status status;
        uint obtainedMarks;
    }
    
    mapping(uint => Student) public students; 
    
    uint[] public totalStudents;
    
    function registerStudent(
        uint rollNo,
        string memory name,
        uint age,
        Department department
    ) public returns (string memory message){

        if (students[rollNo].registrationDate != 0) {
            return "Student already registered";
        }
        
        students[rollNo] = Student({
            name: name,
            age: age,
            registrationDate: block.timestamp,
            department: department,
            status: Status.NotEnrolled,
            obtainedMarks: 0
        });
        
        totalStudents.push(rollNo);

        return "Registration Successfull";
    }
    
    function updateStudentDetails(
        uint rollNo,
        string memory name,
        uint age,
        Department department,
        Status status,
        uint obtainedMarks
    ) public returns (string memory message){
        
        if (students[rollNo].registrationDate == 0) {
            return "Student not registered";
        }
        
        Student storage student = students[rollNo];
        student.name = name;
        student.age = age;
        student.department = department;
        student.status = status;
        student.obtainedMarks = status == Status.Expelled || status == Status.NotEnrolled ? 0 : obtainedMarks;

        return "Information Updated";
    }
    
    function getStudentDetails(uint rollNo) public view returns (Student memory) {
        return students[rollNo];
    }
    
    function getStudentsCountByDepartment(Department department) public view returns (uint) {
        uint count = 0;
        
        for (uint i = 1; i <= totalStudents.length; i++) {
            if (students[i].department == department) {
                count++;
            }
        }
        
        return count;
    }

    function topThreeAchievers(Department department) public view returns (Student[3] memory list) {

        Student[3] memory highAchievers;
        Student memory currentStudent;
        for (uint i = 0; i < totalStudents.length; i++) {
            if (students[totalStudents[i]].department == department) {
                currentStudent = students[totalStudents[i]];
                if (i == 0) {
                    highAchievers[i] = currentStudent;
                } else {
                    if (highAchievers[0].obtainedMarks < currentStudent.obtainedMarks) {
                        highAchievers[2] = highAchievers[1];
                        highAchievers[1] = highAchievers[0];
                        highAchievers[0] = currentStudent;
                    } else if (highAchievers[1].obtainedMarks < currentStudent.obtainedMarks) {
                        highAchievers[2] = highAchievers[1];
                        highAchievers[1] = currentStudent;
                    } else if (highAchievers[2].obtainedMarks < currentStudent.obtainedMarks) {
                        highAchievers[2] = currentStudent;
                    } else {}
                }
            }
        }
        return highAchievers;
    }


}