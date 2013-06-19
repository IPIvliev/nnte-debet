class RemoveColumnsFromDelos < ActiveRecord::Migration
  def up
  	remove_column :delos, :appelacia_date
  	remove_column :delos, :reshenie_date
  	remove_column :delos, :zasedanie_date
  	rename_column :delos, :ilist_date, :status
  	change_column :delos, :status, :integer, :default => "0"
  end

  def down
  	add_column :delos, :appelacia_date, :date
  	add_column :delos, :reshenie_date, :date
  	add_column :delos, :zasedanie_date, :date
  	rename_column :delos, :status, :ilist_date
  	change_column :delos, :ilist_date, :date
  end
end
