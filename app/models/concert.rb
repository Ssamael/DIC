class Concert < ActiveRecord::Base

	has_many :get_involved
	has_many :users, through: :get_involved

	validates :band,
				presence: true,
				length: {minimum: 2}
	validates_presence_of :date, :place
	
	register_currency :eur
	
	monetize :ticket_price_cents, 
			as: "ticket_price", 
			allow_nil: true, 
			with_model_currency: :currency

end
