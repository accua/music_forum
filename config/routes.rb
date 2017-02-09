Rails.application.routes.draw do
  root :to => 'lists#index'
  resources :lists do
    resources :items
  end

  resources :users, :except => [:index] do
    resources :items
    resources :lists
  end

  resources :items do
    resources :lists
  end
end
