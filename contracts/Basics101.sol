// SPDX-License-Identifier: GLP-3.0

pragma solidity ^0.8.0;

contract Basics101 {
    // General Variables
    uint256 public myBalance = 30; //positive integer
    int256 private txAmount = -4; // can be -ve or +ve // can only be called from the contract .
    string internal coinName = "Epic Coin"; // can only be called by the contract nd other contracts within it.
    bool isValid = true; // boolean

    // Global Variables
    uint256 public blockTime = block.timestamp;
    address public sender = msg.sender;

    // Arrays
    string[] public tokenNames = ["ChainLink", "Polygon", "DodgeCoin"];
    uint256[5] levels = [23, 45, 9, 10, 4];

    // Datetime
    uint256 public timeNow1Sec = 1 seconds;
    uint256 public timeNow1Min = 1 minutes;
    uint256 public timeNOw1hr = 1 hours;
    uint256 public timeNow1Day = 1 days;
    uint256 public timeNow1week = 1 weeks;

    // Struct
    struct User {
        address userAddress;
        string userName;
        bool hasTraded;
    }

    // Store a struct in an array
    User[] public users;

    // Mapping
    mapping(string => string) public accountNameMap;

    // Mapping and structs - Nested Mapping
    mapping(address => mapping(string => User)) private userNestedMap;

    // Enums
    enum coinRanking{STRONG, CAUTION, DODGY}
    coinRanking trustLevel;
    coinRanking public defaultTrustLevel = coinRanking.CAUTION;

    
}
