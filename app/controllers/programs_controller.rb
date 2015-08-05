class ProgramsController < ApplicationController
  
  def index
    @programs = Program.all
  end
  
  def copywriting
    @program = Program.find(1)
  end
  
  def onehundred
    @program = Program.find(2)
  end
  
  def showdown
    @program = Program.find(3)
  end
  
end
