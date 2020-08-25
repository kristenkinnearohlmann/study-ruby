# all?
# this version requires maintaining variable state
# and could be more clear
puts "all? tests"

all_odd = true
[1,2,3].each do |number|
    if number.even?
        all_odd = false
    end
end
puts all_odd # returns false

# version using all?
all_odd = [1,3].all? do |number|
    number.odd?
end
puts all_odd # returns true

all_odd = [1,2,3].all? do |number|
    number.odd?
end
puts all_odd # returns false
puts

# none?
puts "none? tests"
check = [1,3].none? do |i|
    i.even?
end
# alt format [1,3].none? {|i| i.even?}
puts check # returns true because all items return false on the test
puts

# any?
puts "any? tests"
check = [1,2,100].any?{|i| i > 99}
puts check
puts 

# include?
puts "include? tests"
the_numbers = [4,8,15,16,23,42]
puts the_numbers.include?(42)
puts the_numbers.include?(6)

puts [5].include?(5)