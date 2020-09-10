class Episode < ApplicationRecord

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :number, presence: true
  validates :url, presence: true

  belongs_to :feed
  
end
