#!/usr/bin/env ruby

require_relative './lib/util'

include Util

# eg: eosiocpp.rb hello
#
c = contract ARGV[0]
c.compile
