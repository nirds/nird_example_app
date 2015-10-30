class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.integer :user
      t.string :feeling
      t.integer :gif_id

      t.timestamps null: false
    end
  end
end
