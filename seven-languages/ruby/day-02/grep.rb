#!/usr/bin/env ruby
# Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line. You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.

# ./grep.rb [file] [string]
filename = ARGV[0]
regex = Regexp.new(ARGV[1])
lineno = 0
File.open(filename) do |file|
    file.each_line do |line|
      puts "#{lineno += 1}: #{line}" if line =~ regex
    end
end