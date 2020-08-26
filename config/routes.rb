Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :repertoires, only: [:show] do
    resources :contacts, only: [:show]
  end

  resources :trips, only: [:new, :create, :edit, :update, :show]
  resources :questions, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
