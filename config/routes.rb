Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"

  resources :restaurants do
    collection do
      get :chinese
      get :italian
      get :japanese
      get :french
      get :belgian
    end


    resources :reviews, only: [:new, :create]
  end
end
