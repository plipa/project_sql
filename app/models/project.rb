class Project < ActiveRecord::Base
  attr_accessor  :nazwa,  :opis

  attr_accessible :nazwa, :opis
   validates :nazwa, :presence => true,
                    :length => {:maximum => 255}
end
