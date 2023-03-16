//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface Invoked {
    function getWorld() external view returns (string memory);
}

contract Caller {

    string private hello = "Hello";
    address private invokedAddress;
    
    constructor(address _invokedAddress) {
        invokedAddress = _invokedAddress;
    }

    function getHelloWorld() public view returns (string memory) {
        string memory world = Invoked(invokedAddress).getWorld();
        return string.concat(hello, " ", world);
    }

}
