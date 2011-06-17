class Projects < ActiveRecord::Base
  attr_accessor  :name,  :description

  attr_accessible :name, :description
end
