class Programs::OnehundredController < ApplicationController
  
  def index
    @programs = Program.all
  end
  
  def show
    @program = Program.find(params[:id])
  end
  
end