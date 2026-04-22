// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/Fundme.sol";

contract  FundMeTest is Test {
    FundMe fundme;

function setUp() external {
    fundme= new FundMe();
}

function testMinimunUsdisFive() public view {
   assertEq(fundme.MINIMUM_USD(),5e18);
}

function testOwnerisMsgSender() public view {
    console.log(fundme.i_owner());
    console.log(msg.sender);
    assertEq(fundme.i_owner(), address(this));
    
}


}//us -> fundmetest-> Fundme,we shouldnt be checking to see if the owner is us i.e msg.sender instead we should be checking to see if the owner is the fundmetest