class CreateIlists < ActiveRecord::Migration
  def change
    create_table :ilists do |t|
      t.string :number
      t.integer :pristav_id
      t.string :sum
      t.date :date
      t.boolean :finish
      t.string :period
      t.integer :dolg_id
      t.integer :agent_id
      t.integer :delo_id

      t.timestamps
    end
  end
end
