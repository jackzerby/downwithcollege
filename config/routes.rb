Rails.application.routes.draw do

  # Home
  root to: 'home#index'

  # Programs
  get "/programs", to: "programs#index"
  get "/programs/crazycopywriting", to: "programs#crazycopywriting"
  get "/programs/onehundred", to: "programs#onehundred"
  get "/programs/showdown", to: "programs#showdown"

  # Trainings
  get "/training", to: "trainings#index"

end
