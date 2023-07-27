class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :about


      t.references :music, foreign_key: true
      t.references :playlists, foreign_key: true


      t.timestamps
    end
  end
end
