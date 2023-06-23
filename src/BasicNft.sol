// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint256 private s_tokenCounter;

    constructor() ERC721("Dogie", "Dog") {
        s_tokenCounter = 0;
    }

    function mintNft()  public {}

    function tokenURI{uint256 toekId} public view override returns (stirng memory) {
        return 
    }
}





