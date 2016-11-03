# Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable.
range = (1..16).to_a
range.each {|i| puts range[i - 4, 4].join(' ') if (i % 4) == 0 }
range.each_slice(4) { |r| puts r.join(' ') }