pragma solidity ^0.4.18;
 
contract Counter {
 
    uint count = 0;
    address owner;
 
    function Counter() public{
       owner = msg.sender;
    } 
 
    function increment() public {
       if (owner == msg.sender) {
          count = count + 1;
       }
    }
 
    function getCount() public constant returns (uint) {
       return count;
    }
 
    function kill() public{
       if (owner == msg.sender) { // We check who is calling
          selfdestruct(owner); //Destruct the contract
       }
    }
}
