class Cat

    attr_accessor :name

    def initialize(name = nil)
        @name = name
        meow
    end

    def meow
        puts "Meow!!!"
    end

end