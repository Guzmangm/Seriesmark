class ChangeColumnSerieId < ActiveRecord::Migration
  def change
    remove_column :seasons, :serie_id
    add_column :seasons, :series_id, :integer
  end
end
