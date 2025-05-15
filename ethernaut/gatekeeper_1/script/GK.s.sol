// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {GK} from "../src/GK.sol";

contract GKScript is Script {
    GK public gk;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        gk = new GK();

        vm.stopBroadcast();
    }
}
