class LinkSeriesCountries < ActiveRecord::Migration
  def change
    add_column :series, :country_id, :integer
  end
end
