Rails.application.routes.draw do
  namespace :api do
    get 'groceries/index'
  end
  namespace :api do
    resources :groceries, only: [:index]
  end
end
