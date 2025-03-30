// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";

import {ReEntrancy} from "../src/ReEntrancy.sol";

contract ReEntrancyTest is Test {
    ReEntrancy reEntrancy;

    function setUp() public {
        vm.createSelectFork("https://eth-sepolia.public.blastapi.io");

        reEntrancy = new ReEntrancy();
    }

    function test_reEntrancy() public {
        reEntrancy.pwn{value: 0.001 ether}();

        assertEq(address(0xa182aC558b3ff980Ea14db972fC5Ecb1B638e09D).balance, 0);
    }
}
