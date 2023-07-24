Rails.application.routes.draw do
  get 'index',to: "home#index"
  # get 'index',to: 'home#index'
  get 'about', to: 'home#about'


  get 'friends_index', to: 'friends#index'
  # get 'about', to: 'friends#about'
  get 'friends_edit/:id', to: 'friends#edit'

  get 'new_friend', to: 'friends#new'

  get 'friends_show/:id', to: 'friends#show'


  post 'create_friend', to: 'friends#create'

  patch 'update_friend/:id', to: 'friends#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
