class Concert < ActiveRecord::Base
	validates :band,
				presence: true,
				length: {minimum: 2}
	validates_presence_of :date, :place

	belongs_to :user
	
end
