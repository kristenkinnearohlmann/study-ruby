# # class definition
# class Dog
#     attr_accessor :breed
#     # body of the Dog class
#     def bark # instance method
#         puts "#{@dog_name} says Woof!!!"
#     end

#     def name=(name_of_dog) # writer
#         # method scope
#         @dog_name = name_of_dog
#     end

#     def name # reader
#         # method scope
#         return @dog_name # instance variable
#     end
# end

# marble = Dog.new

# # marble.name = "Marble"

# marble.bark #=> Woof!!!

class Dog
    attr_reader :name

    def initialize(name) #class constructor
        # Whenever a class is instantiated, this method is called. 
        # There's no need to create it explicitly, but you can to add more 
        # funcationality to instantiation.
        # hook/callback/life cycle event
        puts "A new dog was just born!"
        @name = name # this hooks into the reader method attr_reader creates
        @born_on = Time.now
    end

    def age # this method acts as a dynamic reader
        Time.now - @born_on
    end
end