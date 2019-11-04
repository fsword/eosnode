require_relative './base'
require 'yaml'

class Contract
  include Base

  attr_accessor :name
  attr_accessor :owner
  attr_accessor :operator

  def initialize name, operator='user2', owner='user1'
    self.name = name
    self.owner = owner
    self.operator = operator
  end

  def compile folder="."
    filename = "contracts/#{self.name}/#{self.name}.cpp"
    folder = File.join folder, File.dirname(filename)

    error("File not exist: #{filename}") unless File.exist?(filename)

    Dir.chdir(folder) do
      command("eosio-cpp -o #{self.name}.wasm #{self.name}.cpp --abigen")
    end
  end

  def deploy owner='user1'
    self.owner = owner
    compile
    cleos "set contract #{self.owner} /opt/contracts/#{self.name} -p #{self.owner}@active"
  end


  def method_missing method, *params
    args = params.map{ |a|
      case a
      when Numeric
        a
      when String
        "\"#{a}\""
      else
        fail "#{a.class} not support"
      end
    }.join(",")
    cleos %Q|push action #{self.owner} #{method} '[#{args}]' -p #{self.operator}@active|
  end
end
