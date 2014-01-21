class AddPhotoExtensionToSeries < ActiveRecord::Migration
  def change
    add_column :series, :extension, :string
  end
end
