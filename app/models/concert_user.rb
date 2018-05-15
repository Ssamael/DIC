class ConcertUser < ApplicationRecord
	belongs_to :concert
	belongs_to :user
end
