class Activity < ActiveRecord::Base
  attr_accessible :title, :time, :location
  belongs_to :instructor

  validates :title, :presence => true

  def as_json(options = {})
  	super(options.merge(:only => [:id, :title, :location]))
  	super(options.merge(:methods => [:calculated_value]))
  	super(options.merge(:include => [:instructor]))
  end

end
