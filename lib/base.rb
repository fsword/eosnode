module Base
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
    fig "run dev eosio-cpp #{cmd}"
  end

end
