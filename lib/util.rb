module Util

  class Result
    def initialize result
      @result = result
    end

    def result
      @result
    end

    def inspect
      nil
    end
  end

  @@keys = File.readlines('config/keys').
    delete_if{|s| s == "\n"}.
    map{|s| s.gsub(/(\n| )/,'').split('|')[1..-1] }.
    reduce({}){ |sum,arr| sum.update( arr[0] => [arr[1], arr[2]] ) }

  def keys
    @@keys
  end

  def fig cmd
    puts "+fig #{cmd}"
    result = `docker-compose #{cmd}`.tap do |s|
      puts s
    end
    Result.new result
  end

  def cleos cmd, node='eosio-node'
    fig "exec keosd cleos -u http://#{node}:8888/ #{cmd}"
  end

  def eosiocpp cmd
    fig "run dev eosiocpp #{cmd}"
  end

  def newaccount u, public_key=nil
    public_key ||= keys[u][1]
    cleos "system newaccount eosio #{u} #{keys[u][1]} #{public_key} --stake-net '50.00 SYS' --stake-cpu '50.00 SYS' --buy-ram-kbytes 10000"
  end

  def transfer u1, u2, count
    cleos %Q|push action eosio.token transfer '["#{u1}", "#{u2}", "#{count} SYS", "vote"]' -p eosio|
  end
end


