class PlaylistsController < ApplicationController
  def index 
    playlist = Playlist.all
    render json: playlist
  end
  
  def show 
    playlist = Playlist.find_by(id: params[:id])
    if playlist
      render json: playlist
    else 
      render json: { error: "Playlist not found" }
    end
  end
  
  def add_music_to_playlist
    playlist = Playlist.find_by(id: params[:playlist_id])
    music = Music.find_by(id: params[:music_id])
  
    if playlist && music
      playlist.musics << music
      added_songs = playlist.musics # Fetch added songs
      render json: { playlist: playlist, added_songs: added_songs }, status: :ok
    else
      render json: { error: 'Playlist or music not found' }, status: :not_found
    end
  end
  def fetch_added_songs
    playlist = Playlist.find_by(id: params[:playlist_id])
  
    if playlist
      added_songs = playlist.musics # Fetch added songs
      render json: added_songs, status: :ok
    else
      render json: { error: 'Playlist not found' }, status: :not_found
    end
  end
  
  
  

  
  def create 
    playlist = Playlist.create(playlist_params)
    
    if playlist.persisted?
      render json: playlist, status: :created
    else
      render json: { error: playlist.errors.full_messages.join(", ") }, status: :unprocessable_entity
    end
  end 
    
  def destroy
    playlist = Playlist.find_by(title: params[:title])
      
    if playlist
      playlist.destroy
      render json: { message: 'Playlist deleted successfully' }, status: :ok
    else
      render json: { error: 'Playlist not found' }, status: :not_found
    end
  end
      
  private
  
  def playlist_params
    params.permit(:title, :description, :avatar)
  end
end
