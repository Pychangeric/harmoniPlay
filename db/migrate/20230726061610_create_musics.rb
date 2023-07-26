class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :avatar
      t.string :genre
      t.string :album
      t.string :video

      t.timestamps
    end
  end
end
