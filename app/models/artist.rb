class Artist < ApplicationRecord
    has_many :playlists, through: :musics

end
