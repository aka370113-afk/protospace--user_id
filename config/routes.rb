Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes
  resources :users
  resources :prototype do
    resources :comments
  end
end
