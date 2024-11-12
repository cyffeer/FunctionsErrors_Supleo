// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleSmartContract {

    uint256 public balance;

    
    function deposit(uint256 amount) public {
        
        require(amount > 0, "Amount must be greater than 0");
        
        balance += amount;
    }

    
    function withdraw(uint256 amount) public {
        
        require(balance >= amount, "Insufficient balance");

       
        uint256 previousBalance = balance;
        balance -= amount;
        assert(balance == previousBalance - amount);
    }

    
    function alwaysRevert() public pure {
        revert("This will always revert");
    }
}
