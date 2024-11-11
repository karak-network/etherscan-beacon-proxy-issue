# Etherscan beacon proxy verification issue
## Installation
`pnpm i`

## Scripts
- ###  Deploy as simple Factory:
    - The `Child` contract deployed via simple factory is verified by etherscan.
`forge script script/DeployFactory.s.sol  --broadcast --verify   --private-keys <> --rpc-url <> --verifier etherscan --etherscan-api-key <> -vvv`
- ###  Deploy Factory as a proxy:
    - The `Child` contract doesn't gets verified by etherscan when factory is a proxy .
`forge script script/DeployFactoryAsProxy.s.sol  --broadcast --verify   --private-keys <> --rpc-url <> --verifier etherscan --etherscan-api-key <> -vvv`   