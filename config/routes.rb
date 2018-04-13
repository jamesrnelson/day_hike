Rails.application.routes.draw do
  resources :trips, only: %i[index show]
end
