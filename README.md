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

