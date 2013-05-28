class RemoveAgentIdFromProplatis < ActiveRecord::Migration
  def up
  	    remove_column :proplatis, :agent_id
  end

  def down
  	    add_column :proplatis, :agent_id, :integer
  end
end
