// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

import {GatekeeperOnePwn} from "../src/GatekeeperOnePwn.sol";

contract GatekeeperOneTest is Test {
    GatekeeperOnePwn gatekeeperOnePwn;

    function setUp() public {
        vm.createSelectFork("https://eth-sepolia.public.blastapi.io");

        gatekeeperOnePwn = new GatekeeperOnePwn();
    }

    function test_gatekeeperOne() public {
        for (uint256 i = 22790; i < 40_000; i++) {
            console.log("Gas:", i);
            vm.expectRevert();
            bool success = gatekeeperOnePwn.pwn(i);
            // when running hte test, for the right value, you will get "didn't revert as expected"
        }
    }
}
