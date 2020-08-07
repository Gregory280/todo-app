Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'pages/about', to: 'pages#about'
  resources :todo_lists do
    resources :todo_items
  end
  get 'my_todo_lists', to: 'todo_lists#my_todo_lists'
  resources :users, only: [:show]
end
