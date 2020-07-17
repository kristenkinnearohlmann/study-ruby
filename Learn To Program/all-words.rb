enterWord = ''
manyWords = []
checkCounter = 1

# enter words
while (checkCounter !=0)
    enterWord = gets.chomp
    if enterWord != ''
        manyWords.push enterWord
        enterWord = ''
    else
        checkCounter = 0
    end
end
# if Enter preseed on empty line
    # puts sorted words
    puts manyWords.sort