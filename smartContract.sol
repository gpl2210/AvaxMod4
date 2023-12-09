// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ControlOnAnger is ERC20, Ownable(msg.sender) {
    mapping(address => bool) private ItemsRedeemed;
    uint public constant val = 100;

    constructor() ERC20("ControlOnAnger", "COA") {
        _mint(msg.sender, val);
    }

    function mint(address acc, uint amo) public onlyOwner {
        _mint(acc, amo);
    }

    function redeemItem() public {
        require(balanceOf(msg.sender) >= val, "Balance is insufficient");
        require(!ItemsRedeemed[msg.sender], "Items are redeemed already");

        ItemsRedeemed[msg.sender] = true;
        _burn(msg.sender, val);
    }

    function burn(uint amo) public {
        _burn(msg.sender, amo);
    }
}
