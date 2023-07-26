class Playlist < ApplicationRecord
    has_many :musics
    belongs_to :user
    validates :title, presence: true
    
    
end
