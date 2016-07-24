class DepartementController < ApplicationController
  def index
    @departements = Departement.all
    @regions = Region.all
  end

  def detail
    @ville = Ville.all
    @camping = Camping.all
    @departement = Departement.all
    #slug en paramètre pour avoir tous les départements de la région
    @departement = Departement.find_by_slug(params[:slug])


  end


end
