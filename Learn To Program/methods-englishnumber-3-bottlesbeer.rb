def englishNumber number
    if number < 0 # No negative numbers.
        return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
        return 'zero'
    end

    # No more special cases! No more returns!

    numString = '' # This is the string we will return.

    onesPlace = ['one','two','three','four','five','six','seven','eight','nine']
    tensPlace = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

    # "left" is how much of the number we still have left to write out.
    # "write" is the part we are writing out right now.
    # write and left...get it? :)
    left = number

    # ALl of the calculations below rely on integer math - 
    # write*<a tens number> is return as a whole number rather than a decimal

    write = left/1000000000000 # How many zillions left to write out?
    left = left - write*1000000000000 # Subtract off those zillions

    if write > 0
        # Number in the billions
        zillions = englishNumber write
        numString = numString + zillions + ' zillion'

        if left > 0
            # Format for remaining places
            numString = numString + ' '
        end
    end

    write = left/1000000000 # How many billions left to write out?
    left = left - write*1000000000 # Subtract off those billions

    if write > 0
        # Number in the billions
        billions = englishNumber write
        numString = numString + billions + ' billion'

        if left > 0
            # Format for remaining places
            numString = numString + ' '
        end
    end

    write = left/1000000 # How many millions left to write out?
    left = left - write*1000000 # Subtract off those millions

    if write > 0
        # Number in the millions
        millions =  englishNumber write
        numString = numString + millions + ' million'

        if left > 0
            # Format for remaining places
            numString = numString + ' '
        end
    end

    write = left/1000 # How many thousands left to write out?
    left = left - write*1000 # Subtracts off those thousands

    if write > 0
        # Number is in the thousands
        thousands = englishNumber write
        numString = numString + thousands + ' thousand'

        if left > 0
            # Format for remaining places
            numString = numString + ' '
        end
    end

    write = left/100 # How many hundreds left to write out?
    left = left - write*100 #Subtract off those hundreds


    if write > 0
        # Now here's a really sly trick:
        hundreds = englishNumber write
        numString = numString + hundreds + ' hundred'
        # That's called "recursion". So what did I just do?
        # I told this method to call itself, but with "write" instead of 
        # "number". Remember that "write" is (at the moment) the number of
        # hundreds we have to write out. After we add "hundreds" to
        # "numString", we add the string ' hundred' after it.
        # So, for example, if we originally calle englishNumber with
        # 1999 (so "number" = 1999), then at this point "write" would
        # be 19 and "left" would be 99. The laziest thing to do at this
        # point is to have englishNumber write out the 'nineteen' for us,
        # then we write out ' hundred', and the the rest of
        # englishNumber writes out 'ninety-nine.'.

        if left > 0
            # So we don't write 'two hundredfifty-one'...
            numString = numString + ' '
        end
    end

    write = left/10 # How many tens left to write out?
    left = left - write*10 # Subtract off those tens.

    if write > 0
        if (write == 1) and (left > 0)
            # Since we can't write "tenty-two" instead of "twelve",
            # we have to make a special exception for these.
            numString = numString+ teenagers[left-1]
            # The "-1" is because teenagers[3] is 'fourteen', not 'thirtten'.
            # Since we took care of the digit in the ones place already,
            # we have nothing left to write.
            left = 0
        else
            numString = numString + tensPlace[write-1]
            # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
        end

        if left >0
            # So we don't write 'sixtyfour'...
            numString = numString + '-'
        end
    end

    write = left # How many ones left to write out?
    left = 0 # Subtract off those ones.

    if write > 0
        numString = numString + onesPlace[write-1]
        # The "-1" is because onesPlace[3] is 'four', not 'three'.
    end

    # Now we just return "numString"...
    numString
end

def bottlesEnglishNumber bottlesCount
    bottlesEnglishNumber = englishNumber(bottlesCount)
    bottlesEnglishNumber = bottlesEnglishNumber.capitalize
    return bottlesEnglishNumber
end

def bottleWord bottlesCount
    if bottlesCount == 1
        bottleWord = 'bottle'
    else
        bottleWord = 'bottles'
    end
end

bottlesCount = 1000

while (bottlesCount != 0)
    bottlesEnglishNumber = bottlesEnglishNumber(bottlesCount)
    bottleWord = bottleWord(bottlesCount)

    puts bottlesEnglishNumber + ' ' + bottleWord + ' of beer on the wall,'
    puts bottlesEnglishNumber + ' ' + bottleWord + ' of beer!'
    puts 'You take one down, pass it around,'

    bottlesCount -= 1
    bottlesEnglishNumber = bottlesEnglishNumber(bottlesCount)
    bottleWord = bottleWord(bottlesCount)

    if bottlesCount == 0
        puts 'No bottles of beer on the wall!'
    else
        puts bottlesEnglishNumber + ' ' + bottleWord + ' of beer on the wall!'
        puts
    end
 end