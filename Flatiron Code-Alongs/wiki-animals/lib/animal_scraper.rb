require 'pry'
require 'nokogiri'
require 'open-uri'

class AnimalScraper

    def self.wikipedia(url)
        # fill in animal data
        doc = Nokogiri::HTML(open(url))
        animal = {} # store all data into hash with symbol for key

        animal[:name] = doc.search("h1#firstHeading").text

        animal
        
    end
end