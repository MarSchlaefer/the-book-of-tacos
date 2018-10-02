Rails.application.routes.draw do
  resources :restaurants
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes
  resources :comments
  resources :posts
  resources :passive_relationships
  resources :active_relationships
  resources :users, except: %i(index)
  resources :users do
    member do
      get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
