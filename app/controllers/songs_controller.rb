class SongsController < ApplicationController
  before_action :set_board
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @board.songs
  end

  def show
    redirect_to board_songs_path(@board)
  end

  def new
    @song = @board.songs.new
  end

  def create
    @song = @board.songs.new(song_params)
    if @song.save
      redirect_to board_songs_path(@board)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @song.destroy
    redirect_to board_songs_path(@board)
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :board_id)
  end

end
