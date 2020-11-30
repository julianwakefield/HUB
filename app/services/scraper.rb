require 'byebug'
require 'nokogiri'
require 'open-uri'

class Scraper
    def initialize
        html = open("https://store.steampowered.com/search/?term=")
        doc = Nokogiri::HTML(html)
        game_names = doc.css(".title")  
        byebug
    end


end