pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TstToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TstToken(address _owner)  UpgradeableToken(_owner) {
    name = "TstToken";
    symbol = "TST";
    totalSupply = 2000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}