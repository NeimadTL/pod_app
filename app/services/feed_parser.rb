require 'nokogiri'
require 'open-uri'

class FeedParser

  def self.parse(feed)
    doc = Nokogiri::HTML(URI.open(feed.url))
    items = doc.xpath("//item")
    items.each do |item|
      episode = Episode.new
      episode.title = item.xpath("//title")
      episode.description = item.xpath("//description")
      puts episode.inspect
    end

  end
end
