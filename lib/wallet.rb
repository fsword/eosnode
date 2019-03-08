require_relative './base'
require 'yaml'

class Wallet
  include Base
  include YAML

  WALLET_FILE = './log/wallet.yml'

  attr_accessor :name, :password

  def initialize name="default", password=nil
    @name = name
    @password = password
  end

  # wallet key is saved in container
  def create
    @password = run("create -n #{@name} --to-console").result.split("\n").last.strip.gsub '"', ''
    save_password
    self
  end

  def unlock
    @password ||= load_password
    run "unlock -n #{name} --password #{@password}"
    self
  end

  def import_key key
    run "import -n #{@name} --private-key #{key}"
    self
  end

  def run cmd
    cleos "wallet #{cmd}"
  end

  def save_password
    content = File.read(WALLET_FILE) rescue "--- {}\n"
    records = YAML.load(content)
    records.update(@name => @password)
    File.write(WALLET_FILE, YAML.dump(records))
  end

  def load_password
    YAML.load(File.read(WALLET_FILE))[@name]
  end

  def try_load_password
    if pwd = load_password
      @password = pwd
    end
    self
  end
end


