// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import {Interaction} from "../src/Interaction.sol";
import {Script, console} from "forge-std/Script.sol";

contract DeployInteraction is Script {
    function run() external returns (Interaction) {
        vm.startBroadcast();
        Interaction swapper = new Interaction();
        vm.stopBroadcast();
        return swapper;
    }
}
