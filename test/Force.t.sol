// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";

import {Force} from "../src/Force.sol";

contract ForceTest is Test {
    Force force;

    function setUp() public {
        vm.createSelectFork("https://eth-sepolia.public.blastapi.io");

        force = new Force{value: 1 ether}();
    }

    function test_force() public {
        assertGt(address(0xf17fAA913Ef4A56fEbd652580cF32B8D66Cb723C).balance, 0);
    }
}
