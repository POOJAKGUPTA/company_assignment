Rails.application.routes.draw do
  
  resources :posts do 
    resources :comments
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :users 
  resources :companies
  resources :places
  resources :nodes
  resources :regions
  resources :cities
  resources :states
  resources :countries
  resources :user_regions
  root 'welcome#new'
  get '/profile' =>  'users#profile', as: :profile
  get '/poojak' =>  'users#my_all_users', as: :my_all_users  

end
