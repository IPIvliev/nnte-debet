class CreateDogovors < ActiveRecord::Migration
  def change
    create_table :dogovors do |t|
      t.string :number
      t.integer :agent_id

      t.timestamps
    end
  end
end
