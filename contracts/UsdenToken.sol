// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title UsdenToken
 * @dev Simple ERC20 Token named "Usden" with symbol "USDEN".
 *      This is a straightforward ERC20 implementation using OpenZeppelin.
 *      It's provided as a fork/starting point for a USDT-like token labeled "Usden".
 */
contract UsdenToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("Usden", "USDEN") {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    /**
     * @dev Mint new tokens. Only the owner can call this.
     */
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    /**
     * @dev Burn tokens from caller's balance.
     */
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
