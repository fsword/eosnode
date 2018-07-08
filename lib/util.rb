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
end


