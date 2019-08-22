pragma solidity ^0.5.10;

import {Token20} from "./Token20.sol";
import {Token721} from "./Token721.sol";

contract System is Token721 {
    function create(
        address token20Address,
        address token721Address
    ) public returns (bool) {
        // mint ERC20
        Token20(token20Address).mint(address(1), 100);

        // mint ERC721
        // Token721(token721Address).mint(msg.sender, 200);
        // mint(address(2), 200);

        return true;
    }
}
