Rails.application.routes.draw do
  get 'sessions/new'

  get 'welcome/index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #resources :ratings
  resources :users do
    resources :ratings
  end
  resources :restaurants do
    resources :ratings
  end

  root "welcome#index"

end
