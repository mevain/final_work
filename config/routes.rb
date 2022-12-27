Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
  resources :subscriptions
  resources :memberships
  resources :publishers do
    collection do
      post 'newsub'
    end
  end
    
  resources :books
  devise_for :users
  root 'library#showall'
  get 'library/mybooks'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
end
