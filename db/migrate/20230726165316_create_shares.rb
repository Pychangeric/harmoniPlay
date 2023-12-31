class CreateShares < ActiveRecord::Migration[7.0]
  def change
    create_table :shares do |t|
      t.references :user, null: false, foreign_key: true
      t.string :platform
      t.string :share_url

      t.timestamps
    end
  end
end
