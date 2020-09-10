class Feed < ApplicationRecord

  validates :url, presence: true

  has_many :episodes, dependent: :destroy

end
