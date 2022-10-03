// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

// How does the storageFactory know what is simpleStorage 
//One way -> to do this is to copy paste all of the code here
// contract SimpleStorage{ ..... .... Like this 

// Another way is to import file
import "./SimpleStorage.sol";


contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;
    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    function sfStore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public{
        // in order to interact with any other contracts
        //1-> Address
        //2-> ABI = Application Binary Interface
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // simpleStorage.store(_simpleStorageNumber);

        // upper lines can be written as:-
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // return simpleStorage.retrieve();
        // upper lines can be written as:-
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}



