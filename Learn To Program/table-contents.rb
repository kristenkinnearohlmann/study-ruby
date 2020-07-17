arrTable = [['Chapter 1: Numbers','page 1'],['Chapter 2: Letters','page 72'],['Chapter 3: Variables','page 118']]
lineWidth = 40
leftString = ''
rightString = ''

arrTable.each do |content|
    content.each do |item|
        if item.start_with?('Chapter')
            leftString = item
        else
            rightString = item
        end
    end
    puts leftString.ljust(lineWidth/2) + rightString.rjust(lineWidth/2)
    leftString = ''
    rightString = ''
end