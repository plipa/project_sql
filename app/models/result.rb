class Result < ActiveRecord::Base
  has_one :problem
  attr_accessible :wynik
end
