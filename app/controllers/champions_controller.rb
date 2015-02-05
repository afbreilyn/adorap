class ChampionsController < ApplicationController

	def index
    @champions = Champion.all
	end

  def show
    @champion = Campion.find_by(:id)
  end
end
