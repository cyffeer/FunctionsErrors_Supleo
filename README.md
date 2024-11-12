# FunctionsErrors_Supleo

This project demonstrates a basic Solidity smart contract using the key statements `require()`, `assert()`, and `revert()`. These statements are essential for input validation, ensuring internal consistency, and handling errors in smart contracts.

## Contract Overview

The `SimpleSmartContract` includes the following functions:
1. **deposit()**: Allows users to deposit a specified amount into the contract. It checks that the amount is greater than zero using the `require()` statement.
2. **withdraw()**: Allows users to withdraw a specified amount from the contract. It checks that the balance is sufficient using the `require()` statement and verifies the balance update with the `assert()` statement.
3. **alwaysRevert()**: A function that always reverts the transaction with a custom error message using the `revert()` statement.

## Functions

### `deposit(uint256 amount)`
- **Description**: Deposits a specified `amount` into the contract’s balance.
- **Requirements**: The `amount` must be greater than 0, otherwise, the transaction is reverted with an error message: `"Amount must be greater than 0"`.
- **Usage**: 
  ```solidity
  deposit(100);  // Deposits 100 into the contract
  ```

### `withdraw(uint256 amount)`
- **Description**: Allows a user to withdraw a specified `amount` from the contract.
- **Requirements**: The contract must have enough balance to withdraw the specified `amount`. If there is insufficient balance, the transaction is reverted with an error message: `"Insufficient balance"`.
- **Internal Check**: After updating the balance, it asserts that the new balance is correct using the `assert()` statement.
- **Usage**: 
  ```solidity
  withdraw(50);  // Withdraws 50 from the contract
  ```

### `alwaysRevert()`
- **Description**: A function that always reverts the transaction with the message `"This will always revert"`.
- **Usage**: 
  ```solidity
  alwaysRevert();  // Always reverts with a custom message
  ```

## Solidity Statements Used

### `require()`
- **Purpose**: Used to validate inputs or conditions before proceeding with the function’s execution.
- **Behavior**: If the condition in `require()` is false, it reverts the transaction and provides an error message.
- **Example**: In the `deposit()` and `withdraw()` functions, `require()` ensures that the deposit amount is greater than zero and that there is enough balance to withdraw, respectively.

### `assert()`
- **Purpose**: Used to check internal logic and invariants in the contract. It should never fail unless there's a bug in the contract.
- **Behavior**: If the condition in `assert()` fails, it reverts the transaction and consumes all remaining gas.
- **Example**: In the `withdraw()` function, `assert()` ensures that the contract’s balance was correctly updated after the withdrawal.

### `revert()`
- **Purpose**: Explicitly reverts a transaction with an optional error message.
- **Behavior**: It stops the execution of the function and undoes any changes made to the state. It allows for custom error messages.
- **Example**: The `alwaysRevert()` function is an example of how to use the `revert()` statement to intentionally fail a transaction with a specific message.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
