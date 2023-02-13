Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  resources :users, only: [:show] do
  get :favorites, on: :collection
  end
  root to: "home#top"
  get 'home/top'
  resources :favorites, only: [:create, :destroy]
  resources :features
  resources :services
  resources :factories do
    resources :reviews
  end
end
