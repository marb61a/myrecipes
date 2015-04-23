class Review < ActiveRecord::Base
	validates :body, presence: true, length: { minimum: 5, maximum: 400 }
	belongs_to :chef
	belongs_to :recipe
end