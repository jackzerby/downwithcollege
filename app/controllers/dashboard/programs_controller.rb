class Dashboard::ProgramsController < ApplicationController

  def index
    @programs = Program.all
  end
  
  def show
    @program = Program.find_by_slug(params[:id])
  end
  
end