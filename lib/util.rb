module Util

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


