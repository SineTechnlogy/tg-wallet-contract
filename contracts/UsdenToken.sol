// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title UsdenToken
 * @dev ERC20 Token named "Usden" with symbol "USDEN".
 *      Fixed total supply minted at deployment: 2,100,000,000 USDEN (18 decimals).
 *      No owner-only mint function to keep supply stable.
 */
contract UsdenToken is ERC20 {
    // Total supply: 2,100,000,000 tokens with 18 decimals
    uint256 public constant INITIAL_SUPPLY = 2100000000 * (10 ** 18);

    constructor() ERC20("Usden", "USDEN") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /**
     * @dev Burn tokens from caller's balance.
     */
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
