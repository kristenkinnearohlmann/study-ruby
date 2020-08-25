# original sample to find items in a collection
# need to maintain satate of matches array
# conditional logic could be implicit with another enumerator
# lack of intention and clear semantics
matches = []
[1,2,3,4,5].each do |i|
    matches << i if i.even?
end
puts matches
puts

# select
puts "select tests"
check = [1,2,3,4,5].select do |number|
    number.even?
end
puts check
puts

puts [1,2,3,4,5].select{|i| i.odd?}
puts [1,2,3].select{|i| i.is_a?(String)}
puts

# detect/find
puts "detect/find tests"
puts [1,2,3].detect{|i| i.odd?}
puts [1,2,3,4].detect{|i| i.even?}
puts [1,2,3,4].detect{|i| i.is_a?(String)}
puts

# reject
puts "reject tests"
puts [1,2].reject{|i| i.even?}