Rails.application.routes.draw do
  root "categories#index"

  resources :categories
  resources :movies 
  resources :reviews

end
