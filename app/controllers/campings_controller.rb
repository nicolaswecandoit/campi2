class CampingsController < ApplicationController
  def index
    @campings = Camping.all
  end

  def show
    @camping = Camping.find_by_slug(params[:slug])
  end


end
