class ChampionsController < ApplicationController

  def new
  end

  def create
  end

  def index
    @champions = Champion.all
  end

  def show
    @champion = Champion.find_by_id(params[:id])

    render 'champions/_champion_show', locals: {champion: @champion}, layout: false
  end

  def edit
  end

  def update
  end
  
end
