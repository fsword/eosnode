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

## build contract

```
# cd eosnode
# write a contract on ./contracts/hi/hi.cpp
# ruby eosiocpp.rb ./contracts/hi/hi.cpp
+fig run dev eosiocpp -o ./hi/hi.wast ./hi/hi.cpp

+fig run dev eosiocpp -g ./hi/hi.abi ./hi/hi.cpp
1497123ms thread-0   abi_generator.hpp:68          ricardian_contracts  ] Warning, no ricardian clauses found for hi

1497124ms thread-0   abi_generator.hpp:75          ricardian_contracts  ] Warning, no ricardian contract found for world

Generated ./hi/hi.abi ...
```

Then you can get wasm/wast/abi files.

## Recommend alias

```
cleos='fig exec keosd cleos -u http://eosio-node:8888/'
eosiocpp='fig run dev eosiocpp'
keos='fig exec keosd /bin/bash'
nodeos='fig exec eosio-node /bin/bash'
```

