// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/Fundme.sol";
import{DeployFundMe} from "../script/Deployfundme.s.sol";

contract  FundMeTest is Test {
    FundMe fundme;

function setUp() external {
    //fundme= new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    DeployFundMe deployFundMe= new DeployFundMe();

    fundme=deployFundMe.run();
}

function testMinimunUsdisFive() public view {
   assertEq(fundme.MINIMUM_USD(),5e18);
}

function testOwnerisMsgSender() public view {
    console.log(fundme.i_owner());
    console.log(msg.sender);
    assertEq(fundme.i_owner(), msg.sender);
    
}

function  testPriceFeedVersionIsAccurate() public view  {
    uint256 version=fundme.getVersion();
    console.log(version);
    assertEq(version,4);
}


}//us -> fundmetest-> Fundme,we shouldnt be checking to see if the owner is us i.e msg.sender instead we should be checking to see if the owner is the fundmetest
