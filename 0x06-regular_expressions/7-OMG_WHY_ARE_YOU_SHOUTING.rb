#!/usr/bin/env ruby

# Extract and join capital letters from the argument
puts ARGV[0].scan(/[A-Z]/).join

