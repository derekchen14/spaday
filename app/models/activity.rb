class Activity < ActiveRecord::Base
  attr_accessible :title, :time, :location
  belongs_to :instructor

  validates :title, :presence => true
end
