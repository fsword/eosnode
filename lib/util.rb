module Util

  @@keys = File.readlines('config/keys').
    delete_if{|s| s == "\n"}.
    map{|s| s.gsub(/(\n| )/,'').split('|')[1..-1] }.
    reduce({}){ |sum,arr| sum.update( arr[0] => [arr[1], arr[2]] ) }

  def keys
    @@keys
  end

  def fig cmd
    puts "+fig #{cmd}"
    `docker-compose #{cmd}`.tap do |s|
      puts s
    end
  end

  def cleos cmd, node='eosio-node'
    fig "exec keosd cleos -u http://#{node}:8888/ #{cmd}"
  end

  def eosiocpp cmd
    fig "run dev eosiocpp #{cmd}"
  end

  def newaccount u
    cleos "system newaccount eosio #{u} #{keys[u][1]} #{keys[u][1]} --stake-net '50.00 SYS' --stake-cpu '50.00 SYS' --buy-ram-kbytes 10000"
  end

  def transfer u1, u2, count
    cleos %Q|push action eosio.token transfer '["#{u1}", "#{u2}", "#{count} SYS", "vote"]' -p eosio|
  end
end


