class Dolg < ActiveRecord::Base
  attr_accessible :dogovor_id, :period, :sum
  belongs_to :dogovor

  validates_date :created_at, :is_at => lambda { 1.day.ago },
                               :is_at_message => "must be at least 18 years old"

end