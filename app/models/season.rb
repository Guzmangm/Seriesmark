class Season < ActiveRecord::Base
  validates_presence_of :title
  has_many :episodes, :dependent => :destroy
  belongs_to :serie
end
