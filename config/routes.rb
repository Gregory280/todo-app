Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about', to: 'pages#about'
  resources :todo_lists do
    resources :todo_items
  end
end
