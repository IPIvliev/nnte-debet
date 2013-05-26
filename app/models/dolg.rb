class Dolg < ActiveRecord::Base
  attr_accessible :dogovor_id, :period, :sum
  belongs_to :dogovor
end
