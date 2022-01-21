Rails.application.routes.draw do
  devise_for :users
  resources :resumes

  #get 'home/index'

  get 'home/about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'home#index'

  root 'resumes#index'

  
  # Defines the root path route ("/")
  # root "articles#index"
end
