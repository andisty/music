class SongsController < ApplicationController
  def index
    @songs = Song.includes(:artist).order("artists.name")
  end

  def show
    @song = Song.find( params[:id] )
  end
end
