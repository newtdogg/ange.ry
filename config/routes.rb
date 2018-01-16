Rails.application.routes.draw do
  get 'welcome/index'

  #resources :ratings
  resources :users  
  resources :restaurants do
    resources :ratings
  end

  root "welcome#index"

end
