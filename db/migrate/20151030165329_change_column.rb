class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :gifs, :gif_id, :text
  end
end
