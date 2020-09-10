class Feed < ApplicationRecord

  validates :url, presence: true

  has_many :episodes, dependent: :destroy

  def add_episode(episodes)
    episodes.each do |episode|
      self.episodes.build(title: episode.xpath(".//title").text,
                          description: episode.xpath(".//description").text)
    end
  end

end
