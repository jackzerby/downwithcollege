class Dashboard::EpisodesController < ApplicationController

  def show
    @episode = Episode.find_by_slug(params[:id])
  end
  
end