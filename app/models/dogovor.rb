class Dogovor < ActiveRecord::Base
  attr_accessible :agent_id, :number, :date
  belongs_to :agent
  has_many :dolgs, dependent: :destroy
  has_many :proplatis, dependent: :destroy

  validates :number, :presence => true
end