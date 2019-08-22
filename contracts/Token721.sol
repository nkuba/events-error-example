pragma solidity ^0.5.10;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721.sol";

contract Token721 is ERC721 {

    function mint(address account, uint256 amount) public returns (bool) {
        _mint(account, amount);
        return true;
    }
}
