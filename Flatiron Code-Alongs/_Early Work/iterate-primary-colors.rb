primary_colors = ["Red","Yellow","Blue"]
primary_colors.each do |color| #do begins a block passed to 'each' iterator
    #the lines between do/end are the blocks body
    puts "Primary Color #{color} is #{color.length} letters long."
end #end of block