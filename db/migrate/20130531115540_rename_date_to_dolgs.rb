class RenameDateToDolgs < ActiveRecord::Migration
  def up
  	    remove_column :dolgs, :date
  end

  def down
  	    add_column :dolgs, :date, :string
  end
end
