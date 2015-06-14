Rails.application.routes.draw do
root to: 'problems#index'
resources :problems do
resources :solutions

end
end