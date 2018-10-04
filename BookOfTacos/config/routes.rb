Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  resources :restaurants
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes
  resources :comments
  resources :posts
  resources :likes, only: [:create, :destroy]
  resources :users, except: [:index] do
    member do
      get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :relationships, only: %i(create destroy)

end
