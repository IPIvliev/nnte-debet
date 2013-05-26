class RenameAgentIdToDolgs < ActiveRecord::Migration
change_table :dolgs do |t|

  t.rename :agent_id, :dogovor_id
end
end
