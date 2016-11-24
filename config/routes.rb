Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails, only: [:create, :index, :new, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:create, :index, :new, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
