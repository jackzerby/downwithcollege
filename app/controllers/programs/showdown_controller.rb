class Programs::ShowdownController < ApplicationController
  
  def index
    @programs = Program.all
  end
  
  def show
    @program = Program.find(params[:id])
  end
  
end
