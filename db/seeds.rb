require 'nokogiri'
require 'open-uri'
Article.destroy_all
Game.destroy_all


html = open("https://www.ea.com/games/library/action", 'User-Agent' => 'firefox')
doc = Nokogiri::HTML(html)
gamelist = doc.css("ea-game-box").first(25).each do |game| 
    begin
        title = game.attr('title')
        image = game.attr('background-image')
        file = URI.open(image)
        game1 = Game.new
        game1.name = title
        game1.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
        game1.save
    rescue
    end
end

html2 = open("https://www.pcgamer.com/uk/news/")
articles = Nokogiri::HTML(html2)
articles.search(".article-lead-image-wrap").first(15).each do |url|
    Article.create(title: url.parent.parent.parent.attributes["aria-label"].value, image_url: url.attributes["data-original"].value)
end


# html = open("https://www.ea.com/games/library/action", 'User-Agent' => 'firefox')
#         doc = Nokogiri::HTML(html)
#         gamelist = doc.css("ea-game-box")
       
#             gamelist.first.attr('background-image') gamelist.first.attr('title')
#         byebug
#         # end




# require 'byebug'
# require 'nokogiri'
# require 'open-uri'
# Article.destroy_all
# Game.destroy_all


# html = open("https://www.metacritic.com/browse/games/score/metascore/all/pc/filtered", 'User-Agent' => 'firefox')
# doc = Nokogiri::HTML(html)
# gamelist = doc.css(".clamp-list").css("tr").first(25).each do |game| 
#     begin
#         title = game.css(".title > h3").text
#         image = game.css(".clamp-image-wrap").css("img").attr('src').value
#         file = URI.open(image)
#         game1 = Game.new
#         game1.name = title
#         game1.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
#         game1.save
#     rescue
#     end
# end

# html2 = open("https://www.pcgamer.com/uk/news/")
# articles = Nokogiri::HTML(html2)
# articles.search(".article-lead-image-wrap").first(15).each do |url|
#     Article.create(title: url.parent.parent.parent.attributes["aria-label"].value, image_url: url.attributes["data-original"].value)
# end

