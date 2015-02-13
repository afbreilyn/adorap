class ChampionsController < ApplicationController

  def index
    @champions = Champion.all
  end

  def show
    @champion = Champion.find_by_id(params[:id])

    render 'champions/_champion_show', locals: {champion: @champion}, layout: false
  end
  
end
