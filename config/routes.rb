Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'programme', to: 'pages#programme'
  resources :participants
  resources :addresses, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
