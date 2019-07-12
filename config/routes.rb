Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'cocktails/show'
  # get 'cocktails/new'
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
