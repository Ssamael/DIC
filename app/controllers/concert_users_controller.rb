class ConcertUsersController < ApplicationController
    def index
        @concert = Concert.find(params[:concert_id])
    end
end