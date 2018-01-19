Rails.application.routes.draw do
  get 'sessions/new'

  get 'welcome/index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users do
    resources :restaurants
  end
  resources :users do
    resources :ratings
  end
  resources :restaurants do
    resources :ratings, :only => [:index, :new, :create, :destroy, :edit, :update]
  end

  root "welcome#index"

end
