class Dogovor < ActiveRecord::Base
  attr_accessible :agent_id, :number, :date
  belongs_to :agent
  has_many :dolgs, dependent: :destroy
  has_many :proplatis, dependent: :destroy
  has_many :delos, dependent: :restrict
  has_many :ilists, :through => :delos

  validates :number, :presence => true
end