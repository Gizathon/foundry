// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
// USDC ZKSYNC -> 0x1d17CBcF0D6D143135aE902365D2E5e2A16538D4
// KOI ZKSYNC -> 0xa995ad25Ce5eB76972ab356168f5e1D9257E4d05
// Direct LP address (Normal) -> 0x5D1D0D6644d57B9fa4a7F66Ec9579AAe81CbfAAc
// ResearveUSDC: 69268983, Reserve KOI: 1211743830410676238587

// Indrect ETH - KOI -> 0x1dFb5a190Eb6981b245341C984A281536B11b940
// Eth ZKSYNC -> 0x000000000000000000000000000000000000800A
interface KoiFinance {
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline,
        bool[] calldata stable
    ) external returns (uint[] memory amounts);

    // Calculates the best prices for path. Returns amounts, pool types, and pool fees for route
    // Gets reserve quotes
    function quote(
        uint amountA,
        uint reserveA,
        uint reserveB
    ) external pure returns (uint amountB);

    // WETH address returned
    function WETH() external view returns (address);
}
