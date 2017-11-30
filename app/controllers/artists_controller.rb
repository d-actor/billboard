class ArtistsController < ApplicationController
  before_action :set_song

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_song
    @song = Song.find(params[:song_id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end

end
