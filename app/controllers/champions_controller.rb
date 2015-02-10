class ChampionsController < ApplicationController

	def index
    @champions = Champion.all
	end

  def show
    champ_id = find_camp_with_js_id(params)
    @champion = Champion.find_by_id(champ_id)

    render 'champion_show'
  end

  private
    def find_camp_with_js_id(params)
      params['js_id'].split('list')[1]
    end
  
end
