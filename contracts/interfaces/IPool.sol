// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPool {
    enum LockType {
        NULL,
        HOURS1,
        DAYS30,
        DAYS180,
        DAYS365,
        DAYS730
    }

    function deposit(LockType _lockType, uint256 _amount, bool _comp) external;

    function withdraw(uint256 amount) external;

    function reward(uint256 amount) external;

    function compound() external;

    function harvest() external;
}
