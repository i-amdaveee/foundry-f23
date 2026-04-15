// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";

import {Counter} from "../src/Counter.sol";

contract DeployCounter is Script {

 function run() external  returns(Counter) {
    vm.startBroadcast();
    Counter Mycounter= new Counter();
    vm.stopBroadcast();
    return Mycounter;
 }

}