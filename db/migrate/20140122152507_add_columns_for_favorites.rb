class AddColumnsForFavorites < ActiveRecord::Migration
  def change
	add_column :series, :favorite, :boolean
	add_column :episodes, :favorite, :boolean
  end
end
