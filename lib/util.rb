require_relative "./base"
require_relative "./wallet"

module Util
  include Base

  @@keys = File.readlines('config/keys').
    delete_if{|s| s == "\n"}.
    map{|s| s.gsub(/(\n| )/,'').split('|')[1..-1] }.
    reduce({}){ |sum,arr| sum.update( arr[0] => [arr[1], arr[2]] ) }

  def keys
    @@keys
  end

  def wallet
    @wallet ||= Wallet.new.reload_password
  end

  def newaccount u, public_key=nil
    public_key ||= keys[u][1]
    cleos "system newaccount eosio #{u} #{keys[u][1]} #{public_key} --stake-net '500.00 SYS' --stake-cpu '500.00 SYS' --buy-ram-kbytes 10000"
  end

  def import_user user_name
    newaccount user_name
    wallet.import_key( keys[user_name][0] )
  end

  def transfer u1, u2, count
    cleos %Q|push action eosio.token transfer '["#{u1}", "#{u2}", "#{count} SYS", "vote"]' -p eosio|
  end

  def delegatebw account1, account2
    cleos %Q|system delegatebw #{account1} #{account2} '25000000.0000 SYS' '25000000.0000 SYS' --transfer|
  end

  def regproducer label
    node_name = label.gsub('.', '-') + '-node'
    cleos "system regproducer #{label} #{keys[label][1]} http://#{node_name}:8888", node_name
  end

  def voteproducer voter, bp
    cleos "system voteproducer prods #{voter} #{bp}"
  end

  def error msg
    $stderr.puts msg
    exit 1
  end
end

