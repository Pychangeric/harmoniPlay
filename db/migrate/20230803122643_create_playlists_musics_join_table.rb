class CreatePlaylistsMusicsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists_musics, id: false do |t|
      t.belongs_to :playlist
      t.belongs_to :music
    end
  end
end
