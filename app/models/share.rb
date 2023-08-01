
class Share < ApplicationRecord
  validates :user_id, presence: true
  validates :platform, presence: true
  validates :share_url, presence: true

  
  belongs_to :user
  belongs_to :musics

  validates :song_id, presence: true
end

