class TableMovie < ActiveRecord::Migration[5.2]
  def change
      create_table :movies
      add_column :movies, :title, :genre
  end
end
