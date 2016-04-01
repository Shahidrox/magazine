Rails.application.routes.draw do
  root 'home#index'
  resources :articles do
  	resources :comments do
  		resources :sub_comments do
  			resources :sub_one_comments
  		end
  	end
  end
  devise_for :users
  
end
