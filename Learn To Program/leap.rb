puts "I will calculate leap years for you."
puts "Enter a starting year:"
startYear = gets.chomp

puts "Enter an end year:"
endYear = gets.chomp

countYear = startYear.to_i

puts

puts 'Leap years are:'
while countYear <= endYear.to_i
    # must be divisible by 4 (1984, 2004)
    # must not be divisible by 100 unless they are also divisible by 400 (1800, 1900 are invalid; 1600,2000 are valid)
    if ((countYear % 4 == 0 && countYear % 100 != 0) || (countYear % 4 == 0 && countYear % 100 == 0 && countYear % 400 == 0))
        puts countYear
    end
    countYear += 1
end