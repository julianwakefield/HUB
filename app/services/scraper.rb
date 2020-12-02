require 'byebug'
require 'nokogiri'
require 'open-uri'

class Scraper
    def initialize
        html = open("https://www.ea.com/games/library/action", 'User-Agent' => 'firefox')
        doc = Nokogiri::HTML(html)
        gamelist = doc.css("ea-game-box")
       
            gamelist.first.attr('background-image') gamelist.first.attr('title')
        byebug
        # end
    end


end

# gamelist.css("tr").first.css(".title > h3").text


# require 'byebug'
# require 'nokogiri'
# require 'open-uri'

# class Scraper
#     def initialize
#         html = open("https://www.metacritic.com/browse/games/score/metascore/all/pc/filtered", 'User-Agent' => 'firefox')
#         doc = Nokogiri::HTML(html)
#         gamelist = doc.css(".clamp-list").css("tr").first(25).each do |game|
#             #   p game.css(".title > h3").text
#             game.css(".clamp-image-wrap").css("img").attr('src').value
#         byebug
#         end
#     end


# end

# gamelist.css("tr").first.css(".title > h3").text