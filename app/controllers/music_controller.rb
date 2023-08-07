class MusicController < ApplicationController
  before_action :set_music, only: [:show]

  def index
    musics = Music.all
    render json: musics
  end

  def show 
    playlist = Music.find_by(id:params[:id])
    if playlist
        render json: playlist
    else 
        render json: {error:"playlist not found"}
    end
end
  def create
    music = Music.new(music_params)
    if music.save
      render json: music, status: :created
    else
      render json: { error: music.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  private

  def set_music
    @music = Music.find(params[:id])
  end

  def music_params
    params.require(:music).permit(:title, :avatar, :genre, :album, :video)
  end
end