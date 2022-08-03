// SPDX-License-Identifier: GLP-3.0

pragma solidity ^0.8.0;

contract MyEpicCoin {
    uint availableSupply;
    uint maxSupply;
    constructor(uint _startingSupply, uint _maxSupply) {
        availableSupply = _startingSupply;
        maxSupply = _maxSupply;
        
    }
}

contract MyEpicToken is MyEpicCoin {
    constructor(uint startingSupply, uint availableSupply ) MyEpicCoin(startingSupply,availableSupply) {

    }

    function getAvailableSupply() public view returns(uint){
        return availableSupply;
    }

    function getMaxSupply () public view returns(uint) {
        return maxSupply;
    }
} 