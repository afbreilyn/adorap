class ChampionsController < ApplicationController

  def new
    @champion = Champion.new
  end

  def create
    @champion = Champion.new(champ_params)
    if @champion.save
      redirect_to root_url
    else
      flash[:errors] = @champion.errors.full_messages
      render :new
    end
  end

  def index
    @champions = Champion.all
  end

  def show
    @champion = Champion.find_by_id(params[:id])

    render 'champions/_champion_show', locals: {champion: @champion}, layout: false
  end

  def edit
    @champion = Champion.find(params[:id])
  end

  def update
    @champion = Champion.find(params[:id])

    if @champion.update_attributes(champ_params)
      redirect_to root_url
    else
      flash.now[:errors] = @champion.errors.full_messages
      render :edit
    end
  end

  private

    def champ_params
      params.require(:champion).permit(:name, :lore, :loadingart, :thumbnail, :primary_damage_type)
    end
  
end
