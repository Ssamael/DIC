Rails.application.routes.draw do

  devise_for :users
  get 'concerts/index'

	resources :concerts do
		post :join
	end


	root 'concerts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
