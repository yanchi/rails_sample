Rails.application.routes.draw do
  root to: 'home#index'
  
  get 'home/index'
  get 'home/list'
  namespace :admin do
    resources :contacts
  end
  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
