class House < ActiveRecord::Base
  attr_accessible :agent_id, :number, :street
  belongs_to :agent
end
