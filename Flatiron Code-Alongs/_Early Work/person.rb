class Person
    def initialize(first_name,last_name)
        @first_name = first_name
        @last_name = last_name
    end

    def name # getter method
        "#{@firstname} #{@last_name}".strip
    end

    def name=(full_name) # setter method
        first_name, last_name = full_name.split
        @first_name = first_name
        @last_name = last_name
    end
end

kanye = Person.new("Kanye")
puts kanye.name

kanye.name = "Yeezy"
# could also do kanye.name=("Yeezy")
# first notation is preferred
puts kanye.name