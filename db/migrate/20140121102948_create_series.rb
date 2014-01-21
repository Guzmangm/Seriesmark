class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :title
      t.integer :genre_id

      t.timestamps
    end
  end
end
