class Result < ActiveRecord::Base
  has_one :problem
  attr_accessible :nazwa,:opis
end
