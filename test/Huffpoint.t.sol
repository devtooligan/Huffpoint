// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Vm, Test, console2 as console} from "forge-std/Test.sol";
import {compile, create} from "lib/huff-runner/src/Deploy.sol";

interface I {
    function breakpoint(string memory, bool) external;

}

contract HuffPointTest is Test {
    using { compile } for Vm;
    using { create } for bytes;
    address public huffpoint;

    function setUp() public {
        huffpoint = vm.compile("src/Huffpoint.huff").create({value: 0});
    }

    function testHuffpoint() public {
        // vm.expectCall(
        //     address(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D), abi.encodeCall(I.breakpoint, ("a", true))
        // );
        // idk how to test this, but it works
        // breakpoints "a" "b" and "d" should be on in the debugger
        // forge test --debug testHuffpoint
        (bool success,) = huffpoint.call("");
        require(success, "call failed");
    }
}
