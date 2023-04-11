Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"

  resources :restaurants, only: %i[index new show] do
    resources :reviews, only: [:new, :create]
  end
end
