require 'nokogiri'
require 'open-uri'

class FeedParser

  def self.parse(feed)
    doc = Nokogiri::HTML(URI.open(feed.url))
    doc.xpath("//item").each do |item|
      puts item
    end
  end
end
