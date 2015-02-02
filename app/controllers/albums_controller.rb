class AlbumsController < ApplicationController
  
  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.where(visible: true)
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @albums = Album.where(visible: true)
    @album = Album.find(params[:id])
  end

  private    
  # Never trust parameters from the scary internet, only allow the white list through.
  def album_params
    params.require(:album).permit(:title, :description, :cover, :isHomePage, :visible)
  end
end
