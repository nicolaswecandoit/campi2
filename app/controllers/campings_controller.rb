class CampingsController < ApplicationController


  def index


      @campingpagination = Camping.all.paginate(:per_page => 20, :page => params[:page])
      @villes = Ville.all
      @ville = Ville.all
      @camping = Camping.all
      @camping = Camping.where(["commune LIKE ?","%#{params[:search]}%"])



      @hash = Gmaps4rails.build_markers(@camping) do |camping, marker|
        marker.lat camping.latitude
        marker.lng camping.longitude
        marker.infowindow render_to_string(:partial => "/campings/camping", :locals => { :camping => camping})
        marker.picture ({
          "url" => "http://avantjetaisriche.com/map-pin.png",
          "width" =>  29,
          "height" => 32})
          
      end

  end

  def show

    @camping = Camping.find_by_slug(params[:slug])
@campings = Camping.all

    @hash = Gmaps4rails.build_markers(@camping) do |camping, marker|
      marker.lat camping.latitude
      marker.lng camping.longitude
      marker.infowindow camping.nom
      marker.picture ({
        "url" => "http://avantjetaisriche.com/map-pin.png",
        "width" =>  29,
        "height" => 32})
      end
    end


  def detail
    @campings = Camping.search(params[:search])
    end

end
