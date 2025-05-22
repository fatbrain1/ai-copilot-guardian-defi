

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ThinkingCoin {
    uint256 public totalSupply = 100000000 * 10**18; // 100M tokens
    string public name = "Thinking Coin";
    string public symbol = "THC";
    uint8 public decimals = 18;

    // Token allocation
    uint256 public communityShare = (totalSupply * 50) / 100; // 50%
    uint256 public fundraisersShare = (totalSupply * 20) / 100; // 20%
    uint256 public developersShare = (totalSupply * 20) / 100; // 20%
    uint256 public founderReserve = (totalSupply * 10) / 100; // 10%

    // Balances
    mapping(address => uint256) public balances;
    address public founder;

    constructor(address _founder) {
        founder = _founder;

        // Allocate initial tokens
        balances[founder] = founderReserve;
        balances[address(this)] = totalSupply - founderReserve; // Remaining in contract
    }

    // Function to distribute tokens to contributors
    function distributeTokens(address recipient, uint256 amount) public {
        require(balances[address(this)] >= amount, "Insufficient contract balance");
        balances[address(this)] -= amount;
        balances[recipient] += amount;
    }

    // View balances
    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    // Future governance and staking logic can be added here
}