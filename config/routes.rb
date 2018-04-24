Rails.application.routes.draw do

  resources :critters
  devise_for :users
  root 'pages#home'
  get 'pages/about', as: :about

end
