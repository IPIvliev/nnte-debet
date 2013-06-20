class Delo < ActiveRecord::Base
  attr_accessible :agent_id, :dolg_id, :finish, :dogovor_id, :isk_date, :sum, :status, :user_id

  belongs_to :dogovor

  has_many :ilists, dependent: :destroy


end
