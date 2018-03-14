class Concert < ActiveRecord::Base
	validates :band,
				presence: true,
				length: {minimum: 2}
	validates_presence_of :date, :place
	validates_acceptance_of :ticket_price, :buy_ticket, :more_info

end
