class Season < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :season
end
