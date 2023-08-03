class PlaylistsController < ApplicationController
    def index 
        playlist= Playlist.all
        render json: playlist
    end
    def show 
        playlist = Playlist.find_by(title:params[:title])
        if playlist
            render json: playlist
        else 
            render json: {error:"playlist not found"}
        end
    end
    def create 
      playlist = Playlist.create(playlist_params)
    
      if playlist.persisted?
        render json: playlist, status: :created
      else
        puts playlist.errors.full_messages 
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
