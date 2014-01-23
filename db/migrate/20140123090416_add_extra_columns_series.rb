class AddExtraColumnsSeries < ActiveRecord::Migration
  def change
    add_column :series, :year, :int
	
	create_table :countries do |t|
      t.string :name

      t.timestamps
    end
  end
end
