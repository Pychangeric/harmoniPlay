class Music < ApplicationRecord
    belongs_to :artist
  
    validates :title, presence: true
    validates :genre, presence: true
  end