Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/offers', to: 'pages#offers'
  get '/payment', to: 'pages#payment'
  get '/confirmation', to: 'pages#confirmation'
  get '/listing', to: 'pages#listing'
  resources :cars do
    resources :offers
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
