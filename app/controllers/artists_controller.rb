class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(name: :asc)
  end

  def show
    @artist = Artist.includes(:songs).find( params[:id] )
  end
end
