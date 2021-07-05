Rails.application.routes.draw do
  # get 'messages' => 'messages#index'
  get 'messages' => 'messages#new'
  get 'messages/new'
  get 'users/new'

  get 'messages/something'
  post 'messages/create' => 'messages#create'
  post 'users/logout' => 'users#logout'
  resources :users
  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
