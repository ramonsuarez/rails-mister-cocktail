Rails.application.routes.draw do
  resources :cocktails, only: [:create, :index, :new, :show]
  resources :doses, only: [:new, :create, :destroy]
  resources :ingredients, only: [:create, :index, :new, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
