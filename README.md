### install
```bash
> mkdir test && cd test
> npm install solc
> npm install web3@0.20.2
> npm install ganache-cli
```

### run
```bash
> node
```

```bash
> code = fs.readFileSync('Storage.sol').toString()
> solc = require('solc')
> compiledCode = solc.compile(code)
```

```bash
> Web3 = require('web3')
> web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
> web3.eth.accounts
[ '0x9ae1995b4c6b49ae4e5c2a2db6225c2b5797071a',
  '0x4220e38964d3310d363a3c2b00fdd7d12300bf2f',
  '0x67482f2c226ea652d74fe7aee07dc94ccf6663cd',
  '0x1274178122b28aa91d33d4ca1dbd3ed21c3587ea',
  '0x3dd8a210ec3851818ec307716ab6291d2433bf13',
  '0x0e8ca7499e4724c5d4d10aaaefe539ec3e57d9c9',
  '0xc0a00223a059496bc97cb7bbe3f58a2550518447',
  '0x3ed656d01c4e5fb95b8f95107b237c666c4a8591',
  '0x82d12f59dc23a72218ccaa753c9b204d6688d591',
  '0x448c53cdd1dba468ee5594eac12a4c55e72998d4' ]

> abiDefinition = JSON.parse(compiledCode.contracts[':Storage'].interface)
> StorageContract = web3.eth.contract(abiDefinition)
> byteCode = compiledCode.contracts[':Storage'].bytecode

> deployedContract = StorageContract.new({data: byteCode, from: web3.eth.accounts[0], gas: 4700000})
> contractInstance = StorageContract.at(deployedContract.address)

> deployedContract.setN(10, {from: web3.eth.accounts[1]})
> deployedContract.getN()

```
