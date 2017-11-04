Rails.application.routes.draw do
	resources :problems


	#get '/problems', to: 'problems#index'
	#get '/problems/new', to: 'problems#new'
	#post '/problems', to: 'problems#create'
	#get 'problems/:id', to: 'problems#show'
	#get 'problems/:id/edit', to: 'problems#edit'
	#patch 'problems/:id', to: 'problems#update'
	#put 'problems/:id', to: 'problems#update'
	#delete 'problems/:id', to: 'problems#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
