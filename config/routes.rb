Rails.application.routes.draw do

  get 'character_modifications/new'
  get 'character_modifications/show'
  get 'character_modifications/edit'
  get 'character_equipments/new'
  get 'character_equipments/show'
  get 'character_equipments/edit'
  get 'charms/new'
  get 'charms/show'
  get 'charms/edit'
  root 'pages#index'

  get 'index', to: 'pages#index', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
  get 'help', to: 'pages#help', as: 'help'
  get 'gear', to: 'pages#gear', as: 'gear'
  get 'store', to: 'pages#store', as: 'store'
  get 'stats', to: 'pages#stats', as: 'stats'
  get 'dice', to: 'pages#dice', as: 'dice'
  
  devise_for :users

  resources :armors
  resources :careers

  resources :characters do
    get 'gear', to: 'characters#gear'
    resources :skills
    resources :character_equipments
    resources :character_armors
    resources :character_weapons
    resources :character_modifications
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
