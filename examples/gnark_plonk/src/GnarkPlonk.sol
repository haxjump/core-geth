// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract GnarkPlonk {


    struct GnarkInputs {
        uint16 curveId;
        bytes proof;
        bytes verifyKey;
        bytes witness;
    }

    function encodeGnarkInputs(GnarkInputs calldata gi) public pure returns (bytes memory){
        return abi.encode(gi);
    }


    function decodeGnarkInputsBytes(bytes calldata data) public pure returns (GnarkInputs memory) {
        return abi.decode(data, (GnarkInputs));
    }
}

