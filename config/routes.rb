Rails.application.routes.draw do
  
  root 'sessions#index', as: :home_page
  get 'login', to: 'sessions#new', as: :login_path
  post 'login', to: 'sessions#create', as: :login_try_path
  get 'logout', to: 'sessions#logout', as: :logout_path
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :languages
  resources :users

  
end
