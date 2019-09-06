class AddCategoryIDtoMovie < ActiveRecord::Migration[5.2]
  def change
      add_column :movies, :category_id, :id
      add_index :movies, :category_id
  end
end
