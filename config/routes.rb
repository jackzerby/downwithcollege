Rails.application.routes.draw do

  # Home
  root to: 'home#index'

  # Programs
  get "/programs", to: "programs#index"
  namespace :programs do
    resources :copywriting, only: [:index, :show]
    resources :onehundred, only: [:index, :show]
    resources :showdown, only: [:index, :show]
  end
  
  # Trainings
  get "/training", to: "trainings#index"

end
