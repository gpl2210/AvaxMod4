# ControlOnAnger (COA) Token Smart Contract

## Overview

ControlOnAnger is an ERC-20 token smart contract written in Solidity. The contract includes functionality for minting tokens, redeeming items, and burning tokens. It inherits from the OpenZeppelin ERC20 and Ownable contracts.

## License

This contract is licensed under the MIT License. See the LICENSE file for details.

## Smart Contract Details

### Token Information

- **Name:** ControlOnAnger
- **Symbol:** COA
- **Decimals:** 18 (standard for ERC-20)

### Features

#### Token Minting:

- The initial supply of ControlOnAnger is minted to the contract creator's address during deployment.
- The contract owner can mint additional tokens using the `mint` function.

#### Item Redemption:

- Users can redeem items using the `redeemFunc` function.
- A user needs to have a balance greater than or equal to the specified Loot amount to redeem items.
- Once items are redeemed, the corresponding amount is burned from the user's balance.

#### Token Burning:

- Users can burn their own tokens using the `burn` function.

### Ownership:

- The contract includes the Ownable modifier, ensuring that certain functions can only be executed by the owner.

## Functions

### `mint(address acc, uint amo) public onlyOwner`

Mints additional tokens to the specified address. This function can only be executed by the contract owner.

### `redeemFunc() public`

Allows users to redeem items by burning a specified amount of tokens. The function checks if the user has sufficient balance and has not redeemed items before.

### `burn(uint amo) public`

Allows users to burn a specified amount of their own tokens.

## Smart Contract Deployment

The `ControlOnAnger` smart contract can be deployed without any additional parameters.
