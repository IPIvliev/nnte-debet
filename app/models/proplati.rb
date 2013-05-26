class Proplati < ActiveRecord::Base
  attr_accessible :agent_id, :date, :dolg_id, :sum
  belongs_to :agent
end
