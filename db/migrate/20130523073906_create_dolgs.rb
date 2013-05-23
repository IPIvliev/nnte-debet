class CreateDolgs < ActiveRecord::Migration
  def change
    create_table :dolgs do |t|
      t.integer :agent_id
      t.integer :sum
      t.string :period

      t.timestamps
    end
  end
end
