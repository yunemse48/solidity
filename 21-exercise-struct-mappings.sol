// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
/*
contract StructMapping {
    struct Film {
        string name;
        string director;
    }

    mapping (uint => Film) public mapFilm;

    function addFilm(string memory _name, string memory _director, uint _id) public {
        mapFilm[_id] = Film(_name, _director);
    }

    function getDirector(uint _id) public view returns (string memory) {
        return mapFilm[_id].director;
    }

    function getFilm(uint _id) public view returns (Film memory) {
        return mapFilm[_id];
    }
}
*/

contract StructNestedMapping {
    struct Film {
        string name;
        string director;
    }

    mapping (address => mapping(uint => Film)) public mapFilm;

    function addFilm(string memory _name, string memory _director, uint _id) public {
        mapFilm[msg.sender][_id] = Film(_name, _director);
    }

    function getDirector(uint _id) public view returns (string memory) {
        return mapFilm[msg.sender][_id].director;
    }

    function getFilm(uint _id) public view returns (Film memory) {
        return mapFilm[msg.sender][_id];
    }
}