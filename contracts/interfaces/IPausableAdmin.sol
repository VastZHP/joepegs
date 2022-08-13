// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IPausableAdmin {
    event PauseAdminAdded(address newAdmin);
    event PauseAdminRemoved(address sender, address removedAdmin);
    event PauseAdminRevoked(address revokedAdmin);

    function getPauseAdminAt(uint256 _index) external view returns (address);

    function getNumberOfPauseAdmin() external view returns (uint256);

    function addPauseAdmin(address _newAdmin) external;

    function removePauseAdmin(address _admin) external;

    function revokePauseAdmin() external;
}