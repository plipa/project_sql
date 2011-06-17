class Projects < ActiveRecord::Base
  attr_accessor  :name,  :description

  attr_accessible :name, :description
   validates :name, :presence => true,
                    :length => {:maximum => 255}
end
