Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'
  
  mount ActionCable.server => "/cable"

end
