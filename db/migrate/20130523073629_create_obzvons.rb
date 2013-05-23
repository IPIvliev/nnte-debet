class CreateObzvons < ActiveRecord::Migration
  def change
    create_table :obzvons do |t|
      t.integer :agent_id
      t.datetime :phone_date
      t.date :repeat
      t.string :answer
      t.integer :rezult

      t.timestamps
    end
  end
end
