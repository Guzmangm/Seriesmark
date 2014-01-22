class Season < ActiveRecord::Base
  validates_presence_of :title
  has_many :episodes
  belongs_to :serie
end
