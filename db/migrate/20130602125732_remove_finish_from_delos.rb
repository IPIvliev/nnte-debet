class RemoveFinishFromDelos < ActiveRecord::Migration
  def up
  	remove_column :delos, :finish
   	remove_column :delos, :ilist_id
    remove_column :delos, :agent_id
  end

  def down
  end
end
