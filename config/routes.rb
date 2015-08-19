Rails.application.routes.draw do
  root  "candidates#new"
  resources :candidates, only: [:new, :create, :index]
end
