# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'static#index'
  resources :recipes
end
