Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  resources :users, only: [:show] do
  get :favorites, on: :collection
  end
  root to: "factories#top"
  get 'factories/top'
  resources :favorites, only: [:create, :destroy]
  resources :features
  resources :factories do
    resources :reviews
    resources :services
    collection do
      get 'search'
    end
  end
end
