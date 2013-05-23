class CreateDelos < ActiveRecord::Migration
  def change
    create_table :delos do |t|
      t.integer :agent_id
      t.date :start_date
      t.integer :sum
      t.boolean :finish
      t.integer :ilist_id
      t.integer :dolg_id
      t.integer :user_id

      t.timestamps
    end
  end
end
