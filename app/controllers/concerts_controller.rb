class ConcertsController < ApplicationController

	before_action :authenticate_user!, except:[:index, :show]

	def index
		@concerts = Concert.all
	end

	def show
		@concert = Concert.find(params[:id])
	end

	def new
		@concert = Concert.new
	end

	def edit
		@concert = Concert.find(params[:id])
	end

	def create
		@concert = Concert.new(concert_params)
		if @concert.save
			redirect_to @concert
		else
			render 'new'
		end
	end
	
	def update
		@concert = Concert.find(params[:id])

		if @concert.update(concert_params)
			redirect_to @concert
		else
			render 'edit'
		end
	end

	def destroy
		@concert = Concert.find(params[:id])
		@concert.destroy

		redirect_to concerts_path		
	end


	private

	def concert_params
		params.require(:concert).permit(:band, :date, :place, :ticket_price, :buy_ticket, :more_info, :user_id)
	end	
end