Rails.application.routes.draw do
  resources :releases
  devise_for :users
  resources :accounts
  resources :agencies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
end
