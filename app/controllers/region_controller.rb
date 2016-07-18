class PagesController < ApplicationController
  def index
    @campings = Camping.all
  end

def region
  @regions = Camping.find_by(params[:region])
end

end
