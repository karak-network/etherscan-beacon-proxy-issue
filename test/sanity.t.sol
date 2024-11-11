// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Child.sol";
import "../src/Factory.sol";

contract SanityTest is Test {
    function test_basic() public {
        address childimpl = address(new Child());
        Factory factory = new Factory();
        factory.setImpl(childimpl);
        address deployedChild = factory.deployChild();
        assertEq(uint256(0), Child(deployedChild).counter());
    }
}
