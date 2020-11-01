Rails.application.routes.draw do
  root 'pages#index'

  get 'pages/index', to: 'pages#index', as: 'home'
  get 'pages/about', to: 'pages#about', as: 'about'
  get 'pages/help', to: 'pages#help', as: 'help'
  
  resources :characters
  devise_for :users
end
