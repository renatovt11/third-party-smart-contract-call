//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Invoked {

    string private world = "World!";

    function getWorld() external view returns (string memory) {
        return world;
    } 

}
