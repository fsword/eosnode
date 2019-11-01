# eosnode

build a private network for EOSIO

## Dependencies

* docker
* docker-compose
* ruby

## Run EOS private network

```
# git clone https://github.com/fsword/eosnode.git
# cd eosnode
# docker-compose up -d
# ruby boot.rb
```

Then check containers' log.

## build contract at host machine

```
# write a contract on ./contracts/hello/hello.cpp
# ruby eosiocpp.rb ./contracts/hello/hello.cpp
/Users/fsword/contracts/hello
$ eosio-cpp -o hello.wasm hello.cpp --abigen
Warning, empty ricardian clause file
Warning, empty ricardian clause file

```

note: it will show the workdir before the command is executed.

Then you can get wasm/abi files.

## Recommend alias

```
cleos='fig exec keosd cleos -u http://eosio-node:8888/'
keos='fig exec keosd /bin/bash'
nodeos='fig exec eosio-node /bin/bash'
```

## eosjs sample code

```
const { Api, JsonRpc, RpcError } = require('eosjs');
const { JsSignatureProvider } = require('eosjs/dist/eosjs-jssig');      // development only
const fetch = require('node-fetch');                                    // node only; not needed in browsers
const { TextEncoder, TextDecoder } = require('util');                   // node only; native TextEncoder/Decoder
const { TextEncoder, TextDecoder } = require('text-encoding');          // React Native, IE11, and Edge Browsers only

const eosioKey = "5JzfkjUjBezqGR7FmWLkdxfgKpAWkSST2MjXAUXTaoLrmDQs3GU"; // eosio
const user1Key = "5JGU2UtvpA5VdPA5vGjrRfCSigPDBkZmZLP5VdHD3va6BWHEZFC"; // user1
const user2Key = "5KQBaj7vudpr6UxHY9th3nUoEnrhgeNeTe8YE9dpGwfZ9moxtTb"; // user2

const signatureProvider = new JsSignatureProvider([eosioKey,user1Key,user2Key]);

const rpc = new JsonRpc('http://eosio-node:8888', { fetch });

# check rpc: get info
(async ()=>{
  let ret = await rpc.get_info()
  console.log(ret.head_block_num)
})()

const api = new Api({ rpc, signatureProvider, textDecoder: new TextDecoder(), textEncoder: new TextEncoder() });

# check api: call action

//  account: "user1", name: 'upsert',
//  data: { user: "user2", first_name: "john", last_name: "lee", street: "shishan", city: "hangzhou", state: "zhejiang"},
api.transact({ actions: [{
  authorization: [{ actor: "user2", permission: 'active' }],
  account: "user1", name: 'hi',
  data: { user: "user2"},
}] },{ blocksBehind: 3, expireSeconds: 30 }
).then(result => {
  console.log(result);return 0;
}).catch(e => {
  console.log('\nCaught exception: ' + e);
  if (e instanceof RpcError) console.log(JSON.stringify(e.json, null, 2));
});

# check api: build action
(async()=>{
  let actions = [{
    account: 'user1',
    name: 'hi',
    authorization: [{
      actor: 'user2',
      permission: 'active',
    }],
    data: {
      user: 'user2'
    },
  }]
  let seActions = await api.serializeActions(actions)
  console.log(seActions)
})()

# get account
(async ()=>{
  let ret = await rpc.get_account('eosio')
  console.log(ret)
})()

```

