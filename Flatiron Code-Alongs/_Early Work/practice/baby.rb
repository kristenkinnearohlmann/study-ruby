# 1. Make a baby cry when it is born - X
# 2. Give them a name (reader/writer) - X
# 3. Allow cry through a cry method - X
# 4. Allow names to be optionally set when born - X

# Keep track of all babies that are born
# 1. Where?
#  - where baby is born
# 2. Whose responsibility?
# 3. Where do we put that data?

class Baby

    attr_accessor :name

    def initialize(name = nil)
        @name = name
        cry
        # save the baby somewhere it won't get lost
        ? << ? # class variable to hold babies
    end

    def cry
        puts "Waaaa!!!"
    end

end