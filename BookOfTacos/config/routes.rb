Rails.application.routes.draw do
  resources :restaurants
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes
  resources :comments
  resources :posts
  resources :users, except: %i(index)
  resources :users do
    member do
      get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :relationships, only: %i(create destroy)

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
