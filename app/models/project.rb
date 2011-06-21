class Project < ActiveRecord::Base
    has_many :problems

  validates :nazwa, :presence => true,

                     :length => {:maximum => 255}
end
