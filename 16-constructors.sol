// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Member {
    string name;
    uint age;

    constructor (string memory _name, uint _age) {
        name = _name;
        age = _age;
    }
}

contract Teacher is Member //("Rachel", 28)
{
    constructor (string memory n, uint a) Member(n, a) {}

    function getName() public view returns (string memory) {
        return name;
    }
}

contract Base {
    uint data;

    constructor (uint _data) {
        data = _data;
    }
}

contract Derived is Base {
    constructor (uint _data) Base(_data) {}

    function setData() public view returns (uint) {
        return data;
    }
}

contract Students {
    string name;
    uint level;
    uint age;

    constructor (string memory _name, uint _level, uint _age) {
        name = _name;
        level = _level;
        age = _age;
    }
}

contract Ahmed is Students {
    constructor (string memory _name, uint _level, uint _age) Students (_name, _level, _age) {}

    function getName() public view returns (string memory) {
        return name;
    }

    function getLevel() public view returns (uint) {
        return level;
    }

    function getAge() public view returns (uint) {
        return age;
    }

}