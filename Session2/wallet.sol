// SPDX-license-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Wallet {

//owner is a global variable, this represents the owner of wallet
//payable means the address can send/receive money
  address payable public owner; 

// when the contract is compiled, the code inside constructor will run immediately
constructor() {
  owner = payable(msg.sender);
}

//for a contract to  receive money, it should have receive() as a default function
receive() external payable {} 

fucntion withdraw(uint256 amount) external {
  //Making sure the owner is withdrawing money
  require(msg.sender = owner), "NOt hte owner of this wallet";

  //To check if balance is sufficient for withdrawal
  require(
    address(this).balance >= amount, "Withdraw amount exceeds wallet balance";
  )
}

//this will transfer the amount to the function invoker(owner)
//or payable(msg.sender).transfer(amount)
owner.transfer(amount)

//Get the balance of the contract
function getBalance() external view returns (uint256) {
  return address(this).balance;
}
}