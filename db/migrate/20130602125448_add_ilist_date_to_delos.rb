class AddIlistDateToDelos < ActiveRecord::Migration
  def change
  add_column :delos, :vozbuzhdeno_date, :date
  add_column :delos, :zasedanie_date, :date
  add_column :delos, :reshenie_date, :date
  add_column :delos, :appelacia_date, :date
  add_column :delos, :ilist_date, :date
  end
end
