# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :v1 do
    resources :users, only: [:create]
    resources :tokens, only: [:create]
    resource :current_user, controller: :current_user
  end
end
