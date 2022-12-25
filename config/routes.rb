Rails.application.routes.draw do

  resources :books
  devise_for :users
  root 'library#showall'
  get 'library/mybooks'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
