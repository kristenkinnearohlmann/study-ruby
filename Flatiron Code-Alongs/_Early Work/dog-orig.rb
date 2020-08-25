class Dog
    # Class body

    # Instance method definition
    def bark
        puts "Woof!"
    end

end

fido = Dog.new
# puts fido
# puts fido.object_id

snoopy = Dog.new
# puts snoopy
# puts snoopy.object_id

lassie = Dog.new
# puts lassie
# puts lassie.object_id

# puts snoopy == fido

# puts fido.methods

fido.bark
snoopy.bark

bark