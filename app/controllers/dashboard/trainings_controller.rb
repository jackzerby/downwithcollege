class Dashboard::TrainingsController < ApplicationController

  def index
    @trainings = Training.all
  end
  
  def show
    @training = Training.find_by_slug(params[:id])
  end
  
end