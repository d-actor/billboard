class ArtistsController < ApplicationController
  before_action :set_song

  def new
    @artist = Artist.new
  end

def create
  @artist = @song.artists.new(artist_params)
  if @artist.save
    redirect_to board_song_path(@song.board_id, @song)
  else
    render :new
  end
end

  private

  def set_song
    @song = Song.find(params[:song_id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
