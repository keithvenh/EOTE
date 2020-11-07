Rails.application.routes.draw do

  root 'pages#index'

  get 'index', to: 'pages#index', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
  get 'help', to: 'pages#help', as: 'help'
  get 'gear', to: 'pages#gear', as: 'gear'
  get 'store', to: 'pages#store'
  
  devise_for :users

  resources :armors
  resources :careers
  resources :characters do
    resources :skills
  end
  resources :contacts do
    resources :notations
  end
  resources :equipment
  resources :modifications
  resources :planets
  resources :skills
  resources :specializations
  resources :species
  resources :talents
  resources :vehicles
  resources :weapons
end
