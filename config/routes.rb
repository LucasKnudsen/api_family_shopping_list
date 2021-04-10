Rails.application.routes.draw do
  namespace :api do
    resources :groceries, only: [:index]
  end
end
