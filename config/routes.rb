Rails.application.routes.draw do
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #   get 'cocktails', to: 'cocktails#index'
  #   get 'cocktail', to: 'cocktails#show'
  root to: "cocktails#index"
  resources :cocktails, only: [:new, :create, :show, :index] do
    resources :doses, only: [:new, :create, :show]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:new, :create]
end
