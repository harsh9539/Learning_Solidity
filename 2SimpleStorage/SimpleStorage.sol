
// SPDX-License-Identifier: MIT


// this has same comments as JS
// if i want to use a specific version we will write it like 0.8.8
// but if we write ^0.8.8 means any version above 0.8.8 will run or
// we can give conditional version run like >=0.8.8 < 0.9.0; means it will run for above and equal 0.8.8 and below 0.9.0

pragma solidity ^0.8.8;

contract SimpleStorage{
    // Variables in solidity
    // boolean, uint, int, address, bytes
    
    // uint256 public favNumber; // default value is zero
    uint256 favNumber;
    
    // mapping
    mapping(string=> uint256) public nameToFavoriteNumber;




    // Structure 
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    // making element of People data type
    // People public person = People({favoriteNumber:2,name:"Harsh Goyal"});

    // initialize the array
    // array of data type People just created

    People[] public people;

    function store(uint256 _favoriteNumber) public{
        favNumber = _favoriteNumber;
        retrieve();
    }
    // view,pure functions does not spend gas on execution
    // view and pure function does not allow modification of state
    function retrieve() public view returns(uint256){
        return favNumber;
    }

    // we have mainly three store to store information like:
    // calldata,memory,storage,
    // calldata and memory means variables are temporary 
    // storage exsist variables outside the functions

    // they all can be  modified
    // these are used at only for arrays ,struct or mapping types
    // string is a kind of array of bytes or char

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

 
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138