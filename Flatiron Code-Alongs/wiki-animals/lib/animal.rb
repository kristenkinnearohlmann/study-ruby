require 'pry'

class Animal
    
    attr_accessor :name, :kingdom, :phylum, :klass, :order, :family, :genus, :species

    @@all = []

    # Hooks example, normal constructor
    # closed for modification, open for extension
    def initalize
        @@all << self
    end

    # Class getter method example
    def self.all
        @@all
    end

    # Class finder
    def self.find_by_name(name)
        self.all.detect {|a| a.name == name}
    end

    # Custom constructors - wrappers for the #new method - extends functionality
    def self.new_from_wikipedia(url)
        # animal = Animal.new # sandwich code - each of the methods that are constructing an animal from a source will contain this repetition - eliminate local variable and return value - see DB example below and uncommented version of this method

        # properties = AnimalScraper.wikipedia(url)
        # properties.each do |key, value| # Mass Assignment
        #     animal.send("#{key}=", value)
        # end

        # animal # sandwich code - each of the methods that are constructing an animal from a source will contain this repetition - eliminate local variable and return value with tap - see DB example below and uncommented version of this method

        Animal.new.tap do |animal|
            AnimalScraper.wikipedia(url).each do |key, value|
                animal.send("#{key}=", value) # Mass Assignment
            end
        end
    end

    def self.new_from_database(row)
        Animal.new.tap do |animal|
            #code
        end
    end

    def self.new_from_google_search(keyword)

    end

    def self.new_from_spreadsheet(csv)

    end

end