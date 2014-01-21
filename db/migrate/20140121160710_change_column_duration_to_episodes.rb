class ChangeColumnDurationToEpisodes < ActiveRecord::Migration
  def change
     remove_column :episodes, :duration
	 add_column :episodes, :duration, :integer
  end
end
