# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  resources :user do
    resources :cats, only: %i[new create]
  end
  resources :cats, only: [:show]
end
