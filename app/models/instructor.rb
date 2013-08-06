class Instructor < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :first_name, :last_name
  has_and_belongs_to_many :services
end
