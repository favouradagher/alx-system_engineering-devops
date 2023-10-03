#!/usr/bin/env ruby

# Check if the argument contains a repetition of the letter 't'
puts ARGV[0].scan(/t{2,5}/).join

