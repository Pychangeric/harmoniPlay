class MusicController < ApplicationController

    def index
        musics = Music.all
        render json: musics
    end
end
