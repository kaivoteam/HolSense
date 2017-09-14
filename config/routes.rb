Rails.application.routes.draw do
  #get "dashboard", to: "schools#dashboard"
  get "dash_utp", to: "schools#dash_utp"


  resources :requests
  resources :sections
  resources :levels
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :subjects
  resources :schools

  root to: 'schools#index'

	devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  as :user do
    get 'users/profile/:id', :to => 'users/registrations#show', :as => :profile
  end

  # single user
  #get 'users/:id', to: 'users/registrations#show', as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
