// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract SimpleStorage {
   uint256 favoriteNumber;
   // 0

   struct Person {
       uint256 favoriteNumber;
       string name;
   }

   Person[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person({favoriteNumber: _favoriteNumber, name: _name}));
    }
}