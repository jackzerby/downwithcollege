class HomeController < ApplicationController
  
  def index
    @programs = Program.all
    @trainings = Training.all
  end
  
end
