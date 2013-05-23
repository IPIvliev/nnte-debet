class CreateProplatis < ActiveRecord::Migration
  def change
    create_table :proplatis do |t|
      t.integer :agent_id
      t.integer :sum
      t.date :date
      t.integer :dolg_id

      t.timestamps
    end
  end
end
