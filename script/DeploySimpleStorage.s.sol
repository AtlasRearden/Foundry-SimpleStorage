//SPDX-License-Identifier: MIT

// Contract to deploy the solidity contract with a contract.
pragma solidity ^0.8.25;

// To tell foundry that this contract is a script.
// This came with the forge init command.
import {Script} from "../lib/forge-std/src/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); // Declares that everything after this is deployed to the RPC in the network.

        // Send a transaction to create a new SimpleStorage contract.
        SimpleStorage simpleStorage = new SimpleStorage();

        vm.stopBroadcast(); // Declares that everything before this is deployed to the RPC in the network.
        return simpleStorage;
    }
}
