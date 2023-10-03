#!/usr/bin/env ruby

# Check if the argument contains a repetition of the letter 't' (case-insensitive)
puts ARGV[0].scan(/t{1,5}/i).join

