// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract LearnStructs {

    struct Film {
        string name;
        string director;
        uint id;
    }

    Film sherlock_holmes;

    function addFilm() public {
        sherlock_holmes = Film("Sherlock Holmes", "Guy Ritchie", 1);
    }

    function getDirector() public view returns (string memory) {
        return sherlock_holmes.director;
    }

    function getID() public view returns (uint) {
        return sherlock_holmes.id;
    }
}