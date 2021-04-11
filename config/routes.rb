Rails.application.routes.draw do
  namespace :api do
    resources :groceries, only: %i[index create destroy]
  end
end
