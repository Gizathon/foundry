// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;
import {Test, console} from "forge-std/Test.sol";
import {Interaction} from "../src/Interaction.sol";
import {DeployInteraction} from "../script/Interaction.s.sol";

contract TestInteraction is Test {
    Interaction public interaction;

    function setUp() public {
        DeployInteraction deployInteraction = new DeployInteraction();
        interaction = deployInteraction.run();
    }

    function test_getVersion() public view {
        string memory version = interaction.getVersion();
        assertEq("1.0.0", version);
    }

    function test_getWETHAddress() public view {
        address wethAddress = interaction.getWETHAddress();
        console.log("WETH Address: ", wethAddress);
    }

    function test_GetQuote() public view {
        uint256 amountB = interaction.getQuote(
            100000000,
            69268983,
            1211743830410676238587
        );
        console.log("Amount B: ", amountB);
    }
}
