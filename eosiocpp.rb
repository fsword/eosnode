#!/usr/bin/env ruby

require_relative './lib/util'

include Util

# eg: eosiocpp.rb ./contracts/hello/hello.cpp
#
file = ARGV[0]

error("Please specified cpp file: #{file}")  unless file.end_with?('.cpp')
error("File not exist: #{file}") unless File.exist?(file)

filename = File.basename(file, File.extname(file))
Dir.chdir(File.dirname(file)) do
  command("eosio-cpp -o #{filename}.wasm #{filename}.cpp --abigen")
end

