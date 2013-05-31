class AddMonthToDolg < ActiveRecord::Migration
  def change
    add_column :dolgs, :month, :string
  end
end
