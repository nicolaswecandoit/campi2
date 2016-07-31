class RegionController < ApplicationController
  def index
    @regions = Region.all
    #@departements = Departement.all
    end
    #def show
    #    @regions = Region.all
    #    @departements = Departement.all
    #    @dep_slug = Departement.find_by(params[:region_id])

      #end

      def detail

        @departements = Departement.all
        #slug en paramètre pour avoir tous les départements de la région
        @region = Region.find_by_slug(params[:slug])

        @camping = Camping.all
        @hash = Gmaps4rails.build_markers(@region.campings) do |camping, marker|
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
