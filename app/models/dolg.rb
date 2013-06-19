class Dolg < ActiveRecord::Base
  attr_accessible :dogovor_id, :period, :sum, :month
  belongs_to :dogovor
  belongs_to :agent

  validates :sum, :numericality => true, :presence => true
  validates :dogovor_id, :presence => true, :uniqueness => { :scope => :month }
end