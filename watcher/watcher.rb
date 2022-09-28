#!/usr/bin/env ruby

require 'optparse'

options = {}
required_options = [:interval, :file, :command]

def check_required_options(options, required)
  missing = required - options.keys
  unless missing.empty?
    fail "Missing options: #{missing}"
  end
end

OptionParser.new do |parser|
  parser.banner = "Usage: watcher [options]"

  parser.on("-i", "--interval INTERVAL", "Interval between checking file status") do |i|
    puts "Interval: #{i}"
    options[:interval] = i
  end

  parser.on("-f", "--file FILE", "File to watch") do |f|
    puts "File: #{f}"
    options[:file] = f
  end

  parser.on("-c", "--command COMMAND", "Command to execute when file changes") do |c|
    puts "Command: #{c}"
    options[:command] = c
  end
end.parse!

p options
puts "===== Checking options ====="
check_required_options(options, required_options)
