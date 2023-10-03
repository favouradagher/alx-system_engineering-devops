#!/usr/bin/env ruby

# Check if the argument contains a repetition of the pattern 'hbtn'
puts ARGV[0].scan(/hbtn{2,5}/).join

