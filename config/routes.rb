Rails.application.routes.draw do
  # get 'question_category/questioncategory'
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'pages#home'

  resources :repertoires, only: [:show] do
    resources :contacts, only: [:show]
  end

  resources :trips, only: [:new, :create, :edit, :update, :show]
  resources :questions, only: [:index, :show]

  resources :question_category, only: [:index] do
    collection do
      get :common
      get :call
      get :food
      get :taxi
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
