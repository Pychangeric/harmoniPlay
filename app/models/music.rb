class Music < ApplicationRecord
  has_and_belongs_to_many :playlists, join_table: :playlists_musics



  validates :title, :avatar, :genre , :video, presence: true

end