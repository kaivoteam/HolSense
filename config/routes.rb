Rails.application.routes.draw do
  resources :images
  #get "dashboard", to: "schools#dashboard"
  get "dash_utp", to: "schools#dash_utp"


  resources :requests
  resources :sections
  resources :levels
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :subjects
  resources :schools


	devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    authenticated :user do
      root to: 'schools#index', as: :authenticated_root
    end

    root to: 'users/sessions#new', as: :unauthenticated_root
  end

  as :user do
    get 'users/profile/:id', :to => 'users/registrations#show', :as => :profile
  end

  # single user
  #get 'users/:id', to: 'users/registrations#show', as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
