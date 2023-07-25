class Music < ApplicationRecord
    belongs_to :playlist
    belongs_to :user
    belongs_to :artist


    validates :title, presence: true
    validates :dration, numericality: {greater_than: 0 }
    validates :genre, inclusion: { in: %w(Rock Pop Hip-hop jazz Gengetone Rnb Bongo Art Gospel Insrumental Country )}
end
