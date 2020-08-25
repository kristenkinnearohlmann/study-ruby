# X1. Make them cry when they are born
# X2. Give them a name (through reader/writer)
# X3. Allow them to cry through a method cry
# X*4. Allow names to be optionally set when they are born

# We want to keep track of all babies that are born
# 1. Where can we do that?
    # The only place we can hook into a baby being born is initialize
# 2. Who's responsibility is it?
    # It's the class responsibility
# 3. Where do we put that data?
    # use class variable @@
class Baby

    attr_accessor :name

    def initialize(name = nil)
        @name = name
        cry
        # Save the baby. Put it somewhere that won't get lost.
        @@all << ?
    end

    def cry
        puts "Waaaaaaa!!!"
    end
end

north_west = Baby.new
# cry
north_west.name = "North West"

blue_ivy = Baby.new
blue_ivy.name = "Blue Ivy"

puts north_west.name
puts blue_ivy.name

north_west.cry
blue_ivy.cry