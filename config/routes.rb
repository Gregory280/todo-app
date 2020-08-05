Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  get 'pages/about'
  resources :todo_lists do
    resources :todo_items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
