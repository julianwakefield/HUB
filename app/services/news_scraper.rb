require 'byebug'
require 'nokogiri'
require 'open-uri'

class NewsScraper
    def initialize
        html2 = open("https://www.pcgamer.com/uk/news/")
        articles = Nokogiri::HTML(html2)
        article_titles = doc.css(".article-name")  
        byebug
    end


end

# article_titles.first.children.text