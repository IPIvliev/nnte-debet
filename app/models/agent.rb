class Agent < ActiveRecord::Base
  attr_accessible :address, :e_mail, :name, :phonedogovor_number, :predsedatel, :predsedatel_phone, :buhgalter, :buhgalter_phone, :dogovor_number, :phone
  has_many :houses
  has_many :dogovors
  has_many :dolgs, :through => :dogovors
  has_many :proplatis
end