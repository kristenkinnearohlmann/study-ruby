# brothers = ["Tom","Tim","Jim"]

# count = 0
# while count <= brothers.length-1
#     puts "Stop hitting yourself #{brothers[count]}!"
#     count += 1
# end

# brothers = ["Tim", "Tom", "Jim"]
# counter = 1
# brothers.each do |brother|
#   puts "This is loop number #{counter}"
#   puts "Stop hitting yourself #{brother}!"
#   counter += 1
# end

# brothers = ["Tom","Tim","Jim"]
# brothers.each do |brother|
#     puts "Stop hitting yourself #{brother}!" 
# end

#alternate syntax using {}
brothers = ["Tom","Tim","Jim"]
brothers.each{|brother| puts "Stop hitting yourself #{brother}!"}