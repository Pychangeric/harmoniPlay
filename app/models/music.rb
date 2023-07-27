class Music < ApplicationRecord
    has_and_belongs_to_many :playlist

  
    validates :title, presence: true
    validates :genre, presence: true
  end