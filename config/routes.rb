Rails.application.routes.draw do
  get 'welcome/index'

  #resources :ratings
  resources :users do
    resources :ratings
  end
  resources :restaurants do
    resources :ratings
  end

  root "welcome#index"

end
