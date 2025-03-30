// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";

import {Building} from "../src/Building.sol";

interface IElevator {
    function top() external view returns (bool);
}

contract BuildingTest is Test {
    Building building;

    IElevator elevator = IElevator(0xe1bF10BA20A7C21B1c671Fb21FAaD4c607d0bd39);

    function setUp() public {
        vm.createSelectFork("https://eth-sepolia.public.blastapi.io");

        building = new Building();
    }

    function test_building() public {
        building.toLastFloor();

        assertEq(elevator.top(), true);
    }
}
