Rails.application.routes.draw do
	root 'sessions#welcome'
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	get 'welcome', to: 'sessions#welcome'
	get 'hotels', to: 'hotels#index'
	get '/hotels/:id', to: 'hotels#show', as: 'hotel'
	get 'reservations' , to: 'reservations#new', as: 'new_reservation'
	post 'reservations' , to: 'reservations#create'
	get '/confirmation', to: 'reservations#confirmation'
	delete 'logout', to: 'sessions#destroy'
	get '/auth/facebook/callback' => 'sessions#create'
  resources :users, only: [:new, :create]
end
