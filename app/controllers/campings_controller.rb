class CampingsController < ApplicationController
  def index

    @camping = Camping.all.paginate(:per_page => 20, :page => params[:page])
    @villes = Ville.all
    @ville = Ville.all

  end



  def show
    @camping = Camping.find_by_slug(params[:slug])
  end



end
