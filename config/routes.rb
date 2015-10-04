Rails.application.routes.draw do
  resources :categories
  resources :reports

  root 'reports#index'
end
