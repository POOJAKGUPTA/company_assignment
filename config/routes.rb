Rails.application.routes.draw do
  
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
