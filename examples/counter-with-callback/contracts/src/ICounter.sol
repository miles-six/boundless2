// Copyright 2025 RISC Zero, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

pragma solidity ^0.8.13;

import {IBoundlessMarketCallback} from "boundless-market/IBoundlessMarketCallback.sol";

// @notice ICounter is a simple interface that inherits from IBoundlessMarketCallback
// to handle proofs delivered by the Boundless Market.
interface ICounter is IBoundlessMarketCallback {
    // @notice Emitted when the counter is incremented.
    event CounterCallbackCalled(bytes32 imageId, bytes journal, bytes seal);

    // @notice AlreadyVerified is an error that is thrown when a proof has already been verified.
    error AlreadyVerified();

    // @notice Retrieves the current count.
    // @return The current count.
    function count() external view returns (uint256);
}
