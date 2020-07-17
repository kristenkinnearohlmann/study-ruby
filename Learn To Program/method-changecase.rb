def changeCase inputString
    inputString = inputString.downcase
    inputString = inputString.capitalize
    puts inputString
end

puts "Enter string:"
changeCase gets.chomp