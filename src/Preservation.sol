// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Preservation {
    address public slot0;
    address public slot1;
    address public owner; // this is shadow from the parent contract

    constructor() {}

    function setTime(uint256 _time) public {
        owner = address(uint160(_time));
    }
}
