Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants
  resources :shops
  resources :cafes
  resources :shops do
    collection do
      get 'search'
    end
  end
  resources :cafes do
    collection do
      get 'search'
    end
  end


end
