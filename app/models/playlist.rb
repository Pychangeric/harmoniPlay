class Playlist < ApplicationRecord
    has_many :songs
    belongs_to :user
    validates :title, presence: true
    
    
end
