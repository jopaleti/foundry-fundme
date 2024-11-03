// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/fundMe.sol";

contract DeployFundMe is Script {

    function run() external returns (FundMe) {
        vm.startBroadcast();
        FundMe fundMe = new FundMe(address(0));
        vm.stopBroadcast();
        return fundMe;
    }
}