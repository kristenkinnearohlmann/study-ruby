# Baby - the class itself
# Baby.new - instance of the class

# How do we build a method 'all' on the Baby class? self
# What variable or mechanism will store all the babies?
# When and how will we put a baby in that variable or mechanism to be saved? class variable

class Baby
    @@all = [] # class variable
    ALL = [] # class constant
    attr_accessor :name, :weight, :eye_color, :birthplace # all get/set
    attr_writer :location # writer only, creates "location=()"
    attr_reader :dna, :birthdate # reader only, creates "dna"
# the above are "macros" - it is metaprogramming that expands based on the macro called;
# writer and reader will create the associated patterns

    def initialize # hook/callback/lifecycle event: because it is a method automatically fired by another method
        self.cry # explicit receiver of self - same as line below
        cry # implicit receiver of self - same as line above
        # Ruby will first check cry as a variable; when that fails, Ruby will assume it is a method on the class itself - implied "self"
        @birthdate = Time.now
        @@all << self # How does an object refer to itself? self! stores object ID
    end

    def self.reset_all!
        # ALL = [] # not going to work
        @@all = [] # this would work
        # ALL.clear # this would work but not desired
        # in general, don't try to clear constants!
    end

    def self.all # class method (class reader)
        # can also define as [Class Name].all
        @@all
    end

    def cry # instance method: it is a method of an instance of a class (not all babies cry); represents object ability to have logic
        puts "Waaaaaaa"        
    end

    # def name=(the_baby_name) # writer - set
    #     @my_name = the_baby_name # casting local variable to an instance variable (@)/hoisting
    # end

    # def name # reader - get
    #     @my_name
    # end

    def self.find_by_name(name) # class finder
        @@all.detect {|b| b.name == name}
    end
end

new_baby = Baby.new
new_baby.cry # baby receives cry
new_baby.name = "George"
puts new_baby.name