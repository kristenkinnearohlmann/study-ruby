startArray = []
endArray = []
valEntered = ''
checkCounter = 1
boolLower = true

while (checkCounter !=0)
    valEntered = gets.chomp
    if valEntered != ''
        startArray.push valEntered
        valEntered = ''
    else
        checkCounter = 0
    end
end

checkCounter = 1

 while (checkCounter > 0)
    # if (checkCounter == 0)
    #       endArray.push valEntered
    #       checkCounter = -1
    # else
        valEntered = startArray.shift
        startArray.each do |val|
            if (valEntered > val)
                boolLower = false
                break
            else
                boolLower = true
            end
        end
        if (boolLower == true)
            endArray.push valEntered
        else
            startArray.push valEntered
        end
        checkCounter = startArray.length
    end
#  end

puts endArray