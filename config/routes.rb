Rails.application.routes.draw do

  resources :restaurants do
    collection do
      get :chef
    end
    resources :reviews, only: [:new, :create]
  end


  resources :reviews, only: :destroy










  # resources :restaurants do
  #   collection do
  #     get :top
  #     # get :bottom
  #     # get :london
  #     # get :paris
  #   end
  #   member do
  #     get :chef
  #     # get :top_meal
  #     # get :ratings
  #   end
  # end

  # get 'restaurants/top', to: 'restaurants#top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :restaurants
end
