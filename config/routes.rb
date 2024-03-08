Rails.application.routes.draw do
  namespace :admin do
    resources :contacts
  end
  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
