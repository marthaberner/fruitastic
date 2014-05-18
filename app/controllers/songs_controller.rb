class SongsController < ApplicationController

  def index
    @songs = Song.all
    @song = Song.new
  end

  def create
    @song = Song.create(allowed_parameters)

    if @song.save
      redirect_to songs_path
    else
      render 'songs/index'
    end
  end

  def allowed_parameters
    params.require(:song).permit(:title, :artist)
  end

end