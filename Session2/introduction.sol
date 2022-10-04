// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SolidityIntroduction {

function exampleFunction() public returns (int, uint){
  uint clientAge = 23;
  int weatherInBc = -23;
}

mapping(address => string) public mappingExample;

function addToMap(address addr, string strg) private {
  mappingExample[addr] = strg;
}

function returnMappingExample() {
  return mappingExample;
}

function printMyAge(uint age) public returns (uint) {
  return age;
}

function printMyAGePrivate(uint age) private returns (uint) {
  return age;
}

fucntion returnMappingExample() public view {
  return mappingExample;
}
}