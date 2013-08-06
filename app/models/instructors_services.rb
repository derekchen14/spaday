class InstructorsServices < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :instructors
  belongs_to :services
end
