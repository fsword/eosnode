#!/usr/bin/env ruby

require_relative './lib/util'

include Util

# eg: eosiocpp.rb ./contracts/hello/hello.cpp
#
file = ARGV[0]

error("Please specified cpp file: #{file}")  unless file.end_with?('.cpp')
error("File not exist: #{file}") unless File.exist?(file)

dest_path_base = (file.split('/') - ['contracts']).join('/').sub(/\.cpp$/,'')

eosiocpp("-o #{dest_path_base}.wasm #{dest_path_base}.cpp --abigen")

