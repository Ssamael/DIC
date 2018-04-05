class Concert < ActiveRecord::Base


	validates :band,
				presence: true,
				length: {minimum: 2}
	validates_presence_of :date, :place

	belongs_to :user
	
	register_currency :eur
	
	monetize :ticket_price_cents, 
			as: "ticket_price", 
			allow_nil: true, 
			with_model_currency: :currency

end
