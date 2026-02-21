// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title BaseCounter
 * @dev Minimal onchain counter for learning and experimentation
 */
contract BaseCounter {
    uint256 public count;

    event Increment(address indexed user, uint256 newCount);

    function increment() public {
        count += 1;
        emit Increment(msg.sender, count);
    }

    function getCount() public view returns (uint256) {
        return count;
    }
}
