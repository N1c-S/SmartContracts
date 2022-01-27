// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract myContract {
    string public hello = "Hello World";
    address payable public seller;
    address payable public buyer;

    struct Order {
        string desciption;
        bool completed;
    }

    function confirmOrder() public {
        buyer = payable(msg.sender);
    }

    constructor(string memory _text) {
        hello = _text;
    }
}