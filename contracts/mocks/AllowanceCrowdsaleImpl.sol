pragma solidity ^0.4.24;

import "../token/ERC20/IERC20.sol";
import "../crowdsale/emission/AllowanceCrowdsale.sol";


contract AllowanceCrowdsaleImpl is AllowanceCrowdsale {

  constructor (
    uint256 _rate,
    address _wallet,
    IERC20 _token,
    address _tokenWallet
  )
    public
    Crowdsale(_rate, _wallet, _token)
    AllowanceCrowdsale(_tokenWallet)
  {
  }

}
