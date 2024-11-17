// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CounterContract {
    int256 public counter; // Counter value

    /// Increment the counter
    function increment() public {
        require(counter < type(int256).max, "Counter overflow");
        counter++;
        assert(counter > 0); // Ensure the counter value is positive
    }

    /// Decrement the counter
    function decrement() public {
        require(counter > type(int256).min, "Counter underflow");
        counter--;
        assert(counter < 0 || counter == 0); // Ensure the counter does not exceed its bounds
    }

    /// Reset the counter to zero
    function reset() public {
        counter = 0;
        assert(counter == 0); // Ensure counter is reset
    }

    /// Always revert function
    function alwaysRevert() public pure {
        revert("This function always reverts");
    }
}
