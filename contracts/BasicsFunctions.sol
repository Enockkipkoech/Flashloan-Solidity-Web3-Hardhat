//SPDX-License-Identifier: GLP-3.0

pragma solidity ^0.8.0;

contract BasicFunctions {

    // Setting things up like vars

    string coinName =  "Epic Coin";
    uint public myBalance = 10000;

    struct Coin {
        string name;
        string symbol;
        uint supply;
    }

    mapping(address => Coin) internal myCoin;
    
    // function (string memory _var1, int _var2) public view/pure returns(type e.g bool) {}

    function guessNumber(uint _guess) public pure returns(bool) {
        if(_guess == 5){
            return true;
        } else {
            return false;
        }
    }

    // function returns string

    function getCoinName () public view returns(string memory) {
        return coinName;
    }

    // function that can only be called externally 
    function multiplyBalance(uint _multiplier) external {
        myBalance = myBalance * _multiplier;
    }

    // function uses forloop and multiplies params and string comparisons

    function findCoinIndex(string[] memory _myCoins, string memory _find, uint _startFrom) public pure returns(uint){
        for(uint i = _startFrom; i < _myCoins.length; i++){
            string memory coin = _myCoins[i];

            if(keccak256(abi.encodePacked(coin)) == keccak256(abi.encodePacked(_find))){
                return i;
            }
        }

        return 9999999;
    }

}