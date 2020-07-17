beerCount = 99

while beerCount != 0
    puts beerCount.to_s + ' bottles of beer on the wall,'
    puts beerCount.to_s + ' bottles of beer!'
    puts 'You take one down, pass it around,'
    beerCount = beerCount-1
    if beerCount == 0
        puts 'No bottles of beer on the wall!'
    else
        puts beerCount.to_s + ' bottles of beer on the wall!'
        puts
    end
end