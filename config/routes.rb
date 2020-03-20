Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'
  get "/dashboard", to: "pages#dashboard"
  get "/join", to: "games#join"
  post "", to: "games#redirect", as: :redirect

  resources :games, only: [:create, :show]

end
