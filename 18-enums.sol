// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract EnumsLearn {
    
    // Variables of coffeeCupSize type can only be assigned SMALL, MEDIUM OR LARGE
    enum coffeeCupSize {SMALL, MEDIUM, LARGE}

    // assign MEDIUM to defaultChoice
    coffeeCupSize constant defaultChoice = coffeeCupSize.MEDIUM; 

    // initialise a variable 
    coffeeCupSize choice = defaultChoice;

    function getChoice() public view returns (coffeeCupSize) {
        return choice;
    }

    function makeChoice(uint i) public {
        require (i == 0 || i == 1 || i == 2, "Invalid choice!");
        if (i == 0) {
            choice = coffeeCupSize.SMALL;
        }
        else if (i == 1) {
            choice = coffeeCupSize.MEDIUM; // This line can be removed as the it's the default value
        }
        else {
            choice = coffeeCupSize.LARGE;
        }
    }
}