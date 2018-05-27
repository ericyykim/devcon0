pragma solidity ^0.4.23;

contract Storage {
  uint256 n;

  function setN(uint256 _n) external {
    n = _n;
  }

  function getN() view external returns (uint256) {
    return n;
  }
}
