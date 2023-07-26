class PlaylistsController < ApplicationController
    skip_before_action :verify_authenticity_token
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
        playlist=Playlist.create(playlist_params)
        render json: playlist
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
