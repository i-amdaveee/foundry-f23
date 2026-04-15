// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

contract Counter{
  uint public Mynumber=32;

  function increment() public  returns(uint){
       Mynumber+=23;
       return Mynumber;
        
  }
  
  function getcount() public view returns(uint){
     return Mynumber;
  }

  
}