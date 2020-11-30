require 'byebug'
require 'nokogiri'
require 'open-uri'


html = open("https://store.steampowered.com/search/?term=")
doc = Nokogiri::HTML(html)
game_names = doc.css(".title")  
game_names.first(25).each do |game|
    Game.create(name: game.text)
end

# html2 = open("https://www.pcgamer.com/uk/news/")
# news = Nokogiri::HTML(html2)
# titles = news.css(".article-name")  
# article_titles.children.first(5).each do |article|
#     Article.create(title: article.text)
# end