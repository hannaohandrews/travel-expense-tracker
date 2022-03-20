Rails.application.routes.draw do
  resources :expense_trackers
  # get 'home/index'
  root 'home#index'
  get 'home/about'
end
