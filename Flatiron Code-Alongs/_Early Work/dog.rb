# must make the variable "this_dogs_name"
# an instance variable "@this_dogs_name"
# to be able to access it in both methods
# as part of the instance of the class
class Dog
    def initialize(breed) # callback method
        @breed = breed
    end
    
    def name=(dog_name) # setting
        @this_dogs_name = dog_name
    end

    def name #getting
        @this_dogs_name
    end

    def breed=(breed)
        @breed = breed
    end

    def breed
        @breed
    end
end

lassie = Dog.new("Collie")
lassie.name = "Lassie"

puts lassie.name
puts lassie.breed