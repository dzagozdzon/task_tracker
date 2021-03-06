# frozen_string_literal: true

Rails.application.routes.draw do
  root 'tasks#index'

  get '/sign_up', to: 'registration#new'
  get '/activate', to: 'registration#activate'
  post '/sign_up', to: 'registration#create'

  resources :tasks do
    collection do
      get :search
    end
  end
end
