class ConcertsController < AplicationController
	def create
		concert = Concert.new(concert_params)
		if concert.save
			render json: concert, status: 201, location: concert
		end
	end
	
	private

	def concert_params
		params.require(:concert).permit(:band, :date, :place, :ticket_price, :buy_ticket, :more_info)
	end	
end