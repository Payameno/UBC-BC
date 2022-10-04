//SPDX-License-Identifier: GPL-3.0

//Stating the version of solidity being used
pragma solidity >=0.7.0 <0.9.0;

contract Storage {

  uint256 veryLargeNumber;

//The user passees through a number which we will set as equal to our variable
  function store(uint256 num) public {
    veryLargeNumber = num;
  }

//When contract is on the blockchain, we can retrieve the number using this function
  function retrieve() public view returns (uint256) {
    return veryLargeNumber;

  }
}

