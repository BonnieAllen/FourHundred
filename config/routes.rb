Rails.application.routes.draw do
	devise_for :users, :controllers => { registrations: 'registrations' }   
	 resources :posts do
		resources :uploads
		resources :comments
	end
root 'posts#index'  
end
