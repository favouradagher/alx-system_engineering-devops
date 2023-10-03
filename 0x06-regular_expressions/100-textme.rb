#!/usr/bin/env ruby

# Read the log file
log_file = ARGV[0]
log_lines = File.readlines(log_file)

# Regular expression to extract information
pattern = /\[from:(?<sender>[^\]]+)\] \[to:(?<receiver>[^\]]+)\] \[flags:(?<flags>[^\]]+)\]/

# Iterate over each log line
log_lines.each do |line|
  match_data = line.match(pattern)

  # Check if the line contains the relevant information
  if match_data
    sender = match_data[:sender]
    receiver = match_data[:receiver]
    flags = match_data[:flags]

    # Output the result
    puts "#{sender},#{receiver},#{flags}"
  end
end

