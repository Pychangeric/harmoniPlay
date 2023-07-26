class ArtistController < ApplicationController
    def index
      artists = Artist.all
      render json: artists
    end
  
    def show
      artist = Artist.find(params[:id])
      render json: artist
    end
  
    def create
      artist = Artist.new(artist_params)
      if artist.save
        render json: artist, status: :created
      else
        render json: { error: artist.errors.full_messages.join(', ') }, status: :unprocessable_entity
      end
    end
  
    def update
      artist = Artist.find(params[:id])
      if artist.update(artist_params)
        render json: artist
      else
        render json: { error: artist.errors.full_messages.join(', ') }, status: :unprocessable_entity
      end
    end
  
    def destroy
      artist = Artist.find(params[:id])
      artist.destroy
      head :no_content
    end
  
    private
  
    def artist_params
      params.require(:artist).permit(:name, :genre, :biography)
    end
  end
  