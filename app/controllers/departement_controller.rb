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

    @hash = Gmaps4rails.build_markers(@departement.campings) do |camping, marker|
      marker.lat camping.latitude
      marker.lng camping.longitude
    end
  end


end
