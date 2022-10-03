// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// Inheritance
contract ExtraStorage is SimpleStorage{
    // Now our extra storage is same as simple storage and have all the functionality 
    // like simple storage  and we can say that it will inherit all the simpleStorage


    // here now we are going to add +5 in our simpleStorage store function

    function store(uint256 _favoriteNumber) public override{
        favoriteNumber = _favoriteNumber + 5;
    }
}