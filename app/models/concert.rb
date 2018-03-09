class Concert < ActiveRecord::Base
	validates :band,
				presence: true,
				lenght: {minimum: 2}
	vallidates_presence_of :date, :place
	validate_acceptance_of :ticket_price, :buy_ticket, :more_info

end
