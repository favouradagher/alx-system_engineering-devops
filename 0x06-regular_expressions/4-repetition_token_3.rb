#!/usr/bin/env ruby

# Check if the argument contains a repetition of the pattern 'hbttttn'
puts ARGV[0].scan(/hbttttn{3,}/).join

