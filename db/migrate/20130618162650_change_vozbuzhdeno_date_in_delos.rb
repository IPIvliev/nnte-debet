class ChangeVozbuzhdenoDateInDelos < ActiveRecord::Migration
  def up
  	rename_column :delos, :vozbuzhdeno_date, :vsude
  	change_column :delos, :vsude, :boolean, :default => false
  end

  def down
  	change_column :delos, :vsude, :date
 	rename_column :delos, :vsude, :vozbuzhdeno_date
  end
end