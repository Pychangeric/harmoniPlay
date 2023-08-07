class Music < ApplicationRecord
  has_and_belongs_to_many :playlist


  validates :title, :avatar, :genre , :video, presence: true

end