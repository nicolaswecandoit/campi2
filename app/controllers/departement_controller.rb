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
      marker.infowindow render_to_string(:partial => "/campings/camping", :locals => { :camping => camping})
      marker.picture ({
        "url" => "http://avantjetaisriche.com/map-pin.png",
        "width" =>  29,
        "height" => 32})
    end
  end


end
