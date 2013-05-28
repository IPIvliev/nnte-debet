class RenameDolgIdToDogovorIr < ActiveRecord::Migration
change_table :proplatis do |t|

  t.rename :dolg_id, :dogovor_id
end
end
