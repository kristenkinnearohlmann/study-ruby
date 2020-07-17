byeCount = 0

# initial greeting by grandma
puts 'WELL, HELLO THERE, SONNY!'

while (byeCount < 3)
    # talk to grandma
    kidResponse = gets.chomp  
    if kidResponse == 'BYE'
        byeCount += 1
    else
        byeCount = 0
    end  

        # normal volume response (downcase)
        if kidResponse != kidResponse.upcase    
            # grandma shouts to speak up (upcase)
            puts 'HUH?! SPEAK UP, SONNY!'
        else
            # loud response (upcase)
            # grandma says not since random year (range, upcase)
            puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
        end
end

# shouted 'BYE' 3 times in a row
puts 'GOODBYE, SONNY! NICE TALKING TO YOU!'