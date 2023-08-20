// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract CustomError{
uint[] public arr;
function upush(uint num) public{
if(IsPrime(num)){
//Insert Revert Statement Here
}
arr.push(num);
}
function IsPrime(uint num) public pure returns(bool){
if(num == 0 || num == 1){
return false;
}
for(uint i = 2; i <= num/2; i++){
if(num % i == 0){
return true;
}
}
return false;
}
}