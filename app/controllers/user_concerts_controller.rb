class UserConcertsController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @concerts = @user.concerts.all
    end
end