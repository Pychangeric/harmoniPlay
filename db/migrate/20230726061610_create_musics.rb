class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :avatar
      t.string :genre
      t.string :album
      t.string :video
      


      t.references :playlist, foreign_key: true
      t.references :user, foreign_key: true
      t.references :artist, foreign_key: true
      




      t.timestamps
    end
  end
end