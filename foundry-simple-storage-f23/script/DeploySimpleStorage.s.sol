// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";

import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script{
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();//hey everything after this line inside of this function you should send to the rpc 
        SimpleStorage simpleStorage= new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    
    }
}// to run this code run forge script Script/scriptname.s.sol