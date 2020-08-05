Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  get 'pages/about', to: 'pages#about'
  resources :todo_lists do
    resources :todo_items
  end
end
