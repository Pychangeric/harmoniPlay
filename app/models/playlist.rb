class Playlist < ApplicationRecord
    has_many :musics
    
    validates :title, presence: true
    validates :description, presence: true
    
    
end
