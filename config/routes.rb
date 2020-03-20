Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'
  get "/dashboard", to: "pages#dashboard"

  resources :games, only: [:create, :show]
end
