Rails.application.routes.draw do
  get 'welcome/index'

  resources :ratings
  resources :restaurants
  resources :users

  root "welcome#index"

end
