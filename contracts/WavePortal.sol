// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) public userWaves;

    constructor() {
        console.log("Hey yo! This is T-Stark's first smart contract!");
    }

    function wave() public {
        totalWaves += 1;
        userWaves[(msg.sender)] += 1;
        console.log("%s has waved", msg.sender);
        console.log("%s has waved %d times", msg.sender, userWaves[(msg.sender)]);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("we have %d total waves!", totalWaves);
        return totalWaves;
    }
}