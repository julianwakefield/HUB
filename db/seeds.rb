require 'byebug'
require 'nokogiri'
require 'open-uri'


html = open("https://store.steampowered.com/search/?term=")
doc = Nokogiri::HTML(html)
game_names = doc.css(".title")  
game_names.first(50).each do |game|
    Game.create(name: game.text)
end