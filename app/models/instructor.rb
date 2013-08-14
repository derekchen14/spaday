class Instructor < ActiveRecord::Base
  attr_accessible :name
  has_many :activites

	validates_presence_of :name

	def as_json(options = {})
  	super(options.merge(:methods => [:calculated_value]))
  	super(options.merge(:include => [:activities]))
  end

end
