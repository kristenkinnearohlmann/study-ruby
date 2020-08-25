# # class definition
# # DO NOT USE GLOBAL VARIABLES ($) - overscoping!
# class Dog
#     attr_accessor :name, :breed, :hair_color, :age # 2 methods per symbol
#     attr_reader :gender # 1 method per symbol (reader)
#     attr_writer :last_meal # 1 method per symbol (writer =)
#     # body of Dog class
#     def bark #instance method
#         puts "Woof!!!#{@name}"
#     end

#     # moved to attr_accessor
#     # def name=(the_name_of_the_dog) # writer - scope gate
#     #     # the method's scope
#     #     # write the property of a dog's name
#     #     # puts "You're naming the dog: #{the_name_of_the_dog}"
#     #     @name = the_name_of_the_dog
#     # end

#     # def name # reader - scope gate
#     #     # the method's scope
#     #     # read the property of a dog's name
#     #     @name
#     # end

# end

# fido = Dog.new
# fido.name = "Fido"
# fido.breed = "mutt"
# puts fido.name
# puts fido.breed

# setting property at beginning of life that isn't
# written to later
class Dog
    attr_reader :name, :born_on
    
    def initialize(name) #hook/callback/lifecycle event
        # Dog#initialize will automatically fire upon
        # evocation of Dog.new
        puts "A new dog was just born!!"
        @name = name #static property
        @born_on = Time.now #static property
    end

    def age # dynamic reader
        Time.now - @born_on
    end
end

fido = Dog.new("Fido")
puts fido.name
puts fido.age