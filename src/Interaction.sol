// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import {KoiFinance} from "./interfaces/Koi.sol";

// Enzyme contract Fund Deployer on Polygon -> 0x188d356cAF78bc6694aEE5969FDE99a9D612284F
contract Interaction {
    KoiFinance public koiRouter =
        KoiFinance(0x8B791913eB07C32779a16750e3868aA8495F5964);

    constructor() {}

    function getVersion() public pure returns (string memory) {
        return "1.0.0";
    }

    function getWETHAddress() public view returns (address) {
        return koiRouter.WETH();
    }

    function getQuote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) public view returns (uint256) {
        return koiRouter.quote(amountA, reserveA, reserveB);
    }
}

// Extension address: 0x92fCdE09790671cf085864182B9670c77da0884B
