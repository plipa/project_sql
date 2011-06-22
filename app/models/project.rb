class Project < ActiveRecord::Base
    has_many :problem


  validates :nazwa, :presence => true,

                     :length => {:maximum => 255}
end
