// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Internal{
    string public internalmsg = "Internal Variable is Called";

    function getinternal() internal view returns(string memory){
        return internalmsg;
    }

    function getinternalvar() public view returns(string memory){
        return internalmsg;
    }

    function getinternalfunc() public view returns(string memory){
        return getinternal();
    }
}

contract Internal2 is Internal{
    function modifyInternalMsg() public {
        internalmsg = "Modified Internal Variable (internalmsg)";
    }
}