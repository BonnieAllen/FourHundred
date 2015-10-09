Rails.application.routes.draw do

 get '/profile', to: 'users#profile'
 
	devise_for :users, :controllers => { registrations: 'registrations' }   
	 resources :posts do
		resources :uploads
		resources :comments
	end

	resources :users do
               member do
                    get :following, :followers
                end
            end
            resources :relationships,   only: [:create, :destroy]

root 'posts#index'  
end
