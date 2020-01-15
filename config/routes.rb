Rails.application.routes.draw do
  resources :responses
  resources :messages
  resources :type_cards
  resources :cards
  resources :type_users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "index#index"
end
