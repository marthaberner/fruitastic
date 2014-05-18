class SongsController < ApplicationController

  def index
    @songs = Song.all
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)

    if @song.save
      redirect_to songs_path
    else
      render 'songs/index'
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update_attributes!(song_params)

    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.delete

    redirect_to songs_path
  end

  def song_params
    params.require(:song).permit(:title, :artist)
  end

end