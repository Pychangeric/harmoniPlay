class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :title
      t.string :description
      t.binary :avatar

      t.timestamps
    end
  end
end
