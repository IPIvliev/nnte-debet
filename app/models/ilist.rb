class Ilist < ActiveRecord::Base
  attr_accessible :agent_id, :date, :delo_id, :dolg_id, :finish, :number, :period, :pristav_id, :sum

  belongs_to :delo
end
