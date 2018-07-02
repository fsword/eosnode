require_relative './util'

class Wallet
  include Util

  # wallet key is saved in container
  def create
    password = run('create | tee -a ./log/wallet.log').split("\n").last.strip.gsub '"', ''
    run "unlock --password #{password}"
    self
  end

  def import_key key
    run "import #{key}"
    self
  end

  def run cmd
    cleos "wallet #{cmd}"
  end
end


