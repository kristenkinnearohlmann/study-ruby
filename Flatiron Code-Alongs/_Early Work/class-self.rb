class Integer
    def seven?
        self ==7
    end

    def weird?
        odd?
    end
end

puts 1.seven?
puts 7.seven?

puts 4.weird?
puts 3.weird?