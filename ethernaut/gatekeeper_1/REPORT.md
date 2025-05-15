[<- Back](../../README.md)

There are multiple gates to secure the contract but can be easily bypassed: 
1. the first one requires a [proxy contract](./test/GK.t.sol#L16)
2. the second one requires [gas bruteforce](./test/GK.t.sol#L24)
3. The third one requires [bit masking](./test/GK.t.sol#L21)