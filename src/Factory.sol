// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "solady/src/utils/UUPSUpgradeable.sol";
import "solady/src/utils/LibClone.sol";

contract Factory is UUPSUpgradeable {
    address implAddr;

    function setImpl(address impl) external {
        implAddr = impl;
    }

    function deployChild() external returns (address) {
        return LibClone.deployERC1967BeaconProxy(address(this));
    }

    function implementation() external view returns (address) {
        return implAddr;
    }

    function _authorizeUpgrade(address) internal virtual override {}
}
