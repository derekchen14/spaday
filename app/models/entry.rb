class Entry < ActiveRecord::Base
  attr_accessible :name, :completed

  validates :name, :presence => true
end
