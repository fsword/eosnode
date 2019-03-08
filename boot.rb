#!/usr/bin/env ruby

require_relative './lib/util'

include Util

# 节点创建钱包
wallet.create
%w{eosio eosio.bp1 eosio.bp2 voter1 voter2 voter3}.each do |label|
  wallet.import_key( keys[label][0] )
end

# 创建代币合约账户
%w{eosio.token eosio.bpay eosio.msig eosio.names eosio.ram eosio.ramfee eosio.saving eosio.stake eosio.upay}.each do |label|
  cleos "create account eosio #{label} #{keys[label][1]} #{keys[label][1]}"
end

# 导入私钥
wallet.import_key( keys['eosio.token'][0] )

# 部署eosio.token合约
cleos "set contract eosio.token /contracts/eosio.token"
# 创建SYS代币
cleos %Q|push action eosio.token create '["eosio", "10000000000.0000 SYS", 0, 0, 0]' -p eosio.token|
# 分配代币
cleos %Q|push action eosio.token issue  '["eosio", "10000000000.0000 SYS", "issue"]' -p eosio|
# 查询代币数量
cleos "get currency balance eosio.token eosio"

# 部署系统合约
cleos "set contract eosio /contracts/eosio.bios -p eosio"
cleos "set contract eosio /contracts/eosio.system -p eosio"

# 创建节点和投票账户
%w{eosio.bp1 eosio.bp2 voter1 voter2 voter3}.each do |u|
  newaccount u
end

# 给Voter账户转账
%w{voter1 voter2 voter3}.each do |u|
  transfer 'eosio', u, "100000000.0000"
end

# 锁定Voter账户需要投票的代币
delegatebw('voter1', 'voter2')
delegatebw('voter2', 'voter3')
delegatebw('voter3', 'voter1')

# 节点申请 BP
regproducer('eosio')
regproducer('eosio.bp1')
regproducer('eosio.bp2')

# 开始投票
voteproducer 'voter1', 'eosio'
voteproducer 'voter2', 'eosio.bp1'
voteproducer 'voter3', 'eosio.bp2'

