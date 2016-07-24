class VilleController < ApplicationController
  def index
    @villes = Ville.all
  end

  def detail
    @ville = Ville.find_by_slug(params[:slug])
  end


end
