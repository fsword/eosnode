#!/usr/bin/env ruby

require_relative './lib/util'

include Util

# eg: eosiocpp.rb hello
#
compile ARGV[0]

