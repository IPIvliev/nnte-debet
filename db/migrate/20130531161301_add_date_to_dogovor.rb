class AddDateToDogovor < ActiveRecord::Migration
  def change
    add_column :dogovors, :date, :date
  end
end
