basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]

apples_in_basket = basket.size # Step 1
apples_taken_out = 0 # Step 2

# Step 3 + 4
while apples_taken_out < apples_in_basket
   puts "Taking out #{basket[apples_taken_out]}"
   apples_taken_out += 1
end