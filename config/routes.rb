Rails.application.routes.draw do
  # get 'packages/index'
  # get 'packages/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "packages#index"
  resources :packages
end
