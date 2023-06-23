// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";
import {Test, console} from "forge-std/Test.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;

    function setUp() public ()


}