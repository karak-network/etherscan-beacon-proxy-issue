// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Factory.sol";
import "../src/Child.sol";

contract CounterScript is Script {

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        address childimpl = address(new Child());
        Factory factory = new Factory();
        factory.setImpl(childimpl);
        address deployedChild = factory.deployChild();
        vm.stopBroadcast();
        console.log("Factory contract address: ", address(factory));
        console.log("ChildImpl address: ", childimpl);
        console.log("Deployed child contract address: ", deployedChild);
    }
}
