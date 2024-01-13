// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "https://github.com/KohDarien/ERC721---Ostrich/blob/main/token/ERC721/ERC721.sol";
import "https://github.com/KohDarien/ERC721---Ostrich/blob/main/token/ERC721/extensions/ERC721URIStorage.sol";
import "https://github.com/KohDarien/ERC721---Ostrich/blob/main/token/ERC721/extensions/ERC721Burnable.sol";
import "https://github.com/KohDarien/ERC721---Ostrich/blob/main/access/Ownable.sol";

contract XmasStvgNFT is ERC721, ERC721URIStorage, ERC721Burnable, Ownable {
    constructor(address initialOwner)
        ERC721("Christmas Struisvogel", "XMASSTVG")
        Ownable(initialOwner)
    {}

    function safeMint(address to, uint256 tokenId, string memory uri)
        public
        onlyOwner
    {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    // The following functions are overrides required by Solidity.

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}