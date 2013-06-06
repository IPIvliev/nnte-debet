class RenameStartDateInDelos < ActiveRecord::Migration
change_table :delos do |t|

  t.rename :start_date, :isk_date

end
end
