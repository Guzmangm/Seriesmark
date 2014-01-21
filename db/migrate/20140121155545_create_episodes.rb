class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :season_id
      t.integer :number
      t.time :duration
      t.boolean :watched

      t.timestamps
    end
  end
end
