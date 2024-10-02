// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// this adds behaviour to a function.
// the modification is to make sure that only the owner can change the `changeOwner function`.

contract test{
    address public owner;
    constructor () {          // the constructor method is only called when the contract is deployed on the blockchain.
    owner=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner,"You are not the owner of the contract");
        _;
    }

    function changeowner(address new_owner) public onlyOwner {
        owner=new_owner;
    }
}
