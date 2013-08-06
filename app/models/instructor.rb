class Instructor < ActiveRecord::Base
  attr_accessible :name
  has_many :activites

	validates_presence_of :name
end
