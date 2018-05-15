Rails.application.routes.draw do

  devise_for :users
  get 'concerts/index'

	resources :concerts do
		post :join
		delete :resign
		resources :users, controller: 'concert_users'
	end

		resources :users do
			resources :concerts, controller: 'user_concerts'
		end

	root 'concerts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
