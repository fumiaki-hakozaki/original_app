Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  resources :users, only: [:show] do
  get :favorites, on: :collection
  end
  root to: "factories#top"

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  devise_scope :user do
    post 'users/guest_admin_sign_in', to: 'users/sessions#guest_admin_sign_in'
  end

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
