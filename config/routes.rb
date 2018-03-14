Rails.application.routes.draw do

  get 'concerts/index'

	resources :concerts

	root 'concerts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
