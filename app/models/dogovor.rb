class Dogovor < ActiveRecord::Base
  attr_accessible :agent_id, :number
  belongs_to :agent
  has_many :dolgs
  has_many :proplatis
end
