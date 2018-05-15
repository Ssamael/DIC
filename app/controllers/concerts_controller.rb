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
	def join
		@concert = Concert.find(params[:concert_id])
		@concert.users << current_user
		flash[:notice] = I18n.t("concert.join_conf")
		redirect_to @concert
	end

	def resign
		@concert = Concert.find(params[:concert_id])
		@concert.users.delete(current_user)
		redirect_to @concert
	end


	private

	def concert_params
		params.require(:concert).permit(:band, :date, :place, :ticket_price_cents, :currency, :buy_ticket, :more_info, :user_id)
	end	
end