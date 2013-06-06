class Delo < ActiveRecord::Base
  attr_accessible :agent_id, :dolg_id, :finish, :ilist_id, :start_date, :sum, :user_id

  belongs_to :dogovor
  has_many :ilists, dependent: :destroy
end
