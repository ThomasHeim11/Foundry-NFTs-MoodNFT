// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/**
 * @title BasicNft
 * @dev This contract implements a basic ERC721 NFT with a name of "Dogie" and a symbol of "Dog".
 */
contract BasicNft is ERC721 {
    uint256 private s_tokenCounter;
    mapping(uint256 => string) private s_tokenIdToUri;

    constructor() ERC721("Dogie", "Dog") {
        s_tokenCounter = 0;
    }

    /**
     * @dev Mint a new NFT with the given token URI.
     * @param tokenUri The URI of the token.
     */
    function mintNft(string memory tokenUri) public {
        s_tokenIdToUri[s_tokenCounter] = tokenUri;
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    /**
     * @dev Returns the URI of the given token ID.
     * @param tokenId The ID of the token.
     * @return The URI of the token.
     */
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return s_tokenIdToUri[tokenId];
    }
}