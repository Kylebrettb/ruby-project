Rails.application.routes.draw do
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	get 'welcome', to: 'sessions#welcome'
	get 'hotels', to: 'hotels#index'
	get '/hotels/:id', to: 'hotels#show', as: 'hotel'
	get 'reservations' , to: 'reservations#new', as: 'new_reservation'
	post 'reservations' , to: 'reservations#create'
  resources :users, only: [:new, :create]
end
