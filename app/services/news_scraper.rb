# require 'byebug'
# require 'nokogiri'
# require 'open-uri'

# class NewsScraper
#     def initialize
#         html2 = open("https://www.pcgamer.com/uk/news/")
#         articles = Nokogiri::HTML(html2)
#         # article_titles = articles.css(".article-name").children
#         article_url = articles.search(".article-lead-image-wrap").map do |url|
#             #  url.text.strip
#             [url.parent.parent.parent.attributes["aria-label"].value, url.attributes["data-original"].value]
#         end
#         p article_url 
#         byebug
#     end
 
# end



# article_titles.first.children.text