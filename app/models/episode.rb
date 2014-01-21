class Episode < ActiveRecord::Base
  validates_presence_of :title, :number
  belongs_to :season
end
