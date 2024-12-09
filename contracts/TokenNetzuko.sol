// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 * 0xa4e528cf79e2e6cb7592353842ada340074ef314
 */
contract TokenNetzuko is ERC20 {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
     constructor(uint256 initialSupply) ERC20("Netzuko", "NZK") {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
}