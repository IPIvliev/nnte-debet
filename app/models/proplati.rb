class Proplati < ActiveRecord::Base
  attr_accessible :date, :dogovor_id, :sum
  belongs_to :agent
  belongs_to :dogovor

  validates :date, :sum, :presence => true
end
