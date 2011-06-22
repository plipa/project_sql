class Problem < ActiveRecord::Base
  has_one :project
  has_one :result
end
