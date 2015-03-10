class Genre < ActiveRecord::Base
	has_many :artists
	has_many :songs
	has_many :albums

	validates :name, presence: true
	validates :name, length: {minimum: 2}

	extend FriendlyId
  friendly_id :name, use: :slugged
end
