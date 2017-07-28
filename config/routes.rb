Rails.application.routes.draw do
	resources :users
	resources :attractions
	resources :rides, only: [:create]
	root 'users#welcome'
	get '/signin', to: 'sessions#new'
	post '/signin', to: 'sessions#create'
	get '/signup', to: 'users#new'
	delete '/logout', to: 'sessions#destroy', as: 'delete_session'
	# post '/signup', to: 'users#create'


end