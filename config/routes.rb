Rails.application.routes.draw do
  resources :reports

  root 'reports#index'
end
