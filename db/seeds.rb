require 'byebug'
require 'nokogiri'
require 'open-uri'


html = open("https://store.steampowered.com/search/?term=")
doc = Nokogiri::HTML(html)
game_names = doc.css(".title")  
game_names.first(25).each do |game|
    Game.create(name: game.text)
end



html2 = open("https://www.pcgamer.com/uk/news/")
articles = Nokogiri::HTML(html2)
articles.search(".article-lead-image-wrap").first(15).each do |url|
    Article.create(title: url.parent.parent.parent.attributes["aria-label"].value, image_url: url.attributes["data-original"].value)
end
