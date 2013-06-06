class RenameDolgIdInDelos < ActiveRecord::Migration
change_table :delos do |t|

  t.rename :dolg_id, :dogovor_id

end
end
