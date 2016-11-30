Rails.application.routes.draw do
  
  get 'kpi/index'

  resources :brmcollections
  resources :flights
  resources :freights
  resources :pages

  root 'pages#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
