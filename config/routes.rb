Rails.application.routes.draw do
  devise_for :users
root to: 'problems#index'
resources :problems do
resources :solutions
end
end
