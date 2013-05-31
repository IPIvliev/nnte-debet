class AddDateToDolg < ActiveRecord::Migration
  def change
    add_column :dolgs, :date, :date
  end
end
