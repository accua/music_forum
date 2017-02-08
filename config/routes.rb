Rails.application.routes.draw do
  root :to => 'lists#index'
  resources :lists do
    resources :users
    resources :items
  end

  resources :users do
    resources :items
    resources :lists
  end
end
