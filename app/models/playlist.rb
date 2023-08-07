class Playlist < ApplicationRecord
    has_and_belongs_to_many :musics, join_table: :playlists_musics

    
    validates :title, presence: true
    validates :description, presence: true
    
    
end
