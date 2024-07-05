// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/MainChainGaugeInjector.sol";

contract Deploy is Script {
  function run() external {
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
    vm.startBroadcast(deployerPrivateKey);

    MainChainGaugeInjector injector = new MainChainGaugeInjector(
      address(), // address keeperRegistryAddress
      60 * 60 * 6, // uint256 minWaitPeriodSeconds
      address() // address injectTokenAddress
    );

    vm.stopBroadcast();
  }
}
