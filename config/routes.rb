Rails.application.routes.draw do

  # Home
  root to: 'home#index'
  
  # Dashboard
  get "/dashboard", to: "dashboard#index"
  namespace :dashboard do
    resources :trainings, only: [:index, :show]
    resources :programs, only: [:index, :show]
    resources :episodes, only: [:show]
  end
  
  # Programs
  get "/programs", to: "programs#index"
  get "/programs/copywriting", to: "programs#copywriting"
  get "/programs/onehundred", to: "programs#onehundred"
  get "/programs/showdown", to: "programs#showdown"
  
  # Trainings
  get "/training", to: "trainings#index"

end
