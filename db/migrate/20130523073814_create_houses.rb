class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :street
      t.string :number
      t.integer :agent_id

      t.timestamps
    end
  end
end
