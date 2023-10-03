#!/usr/bin/env ruby

# Check if the argument exactly matches the pattern 'h...n'
puts ARGV[0].scan(/^h.n$/).join

