Rails.application.routes.draw do
	devise_for :users, :controllers => { registrations: 'registrations' }   
	 resources :posts do
		
		resources :uploads
	end
root 'posts#index'  
end
