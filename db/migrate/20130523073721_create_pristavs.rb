class CreatePristavs < ActiveRecord::Migration
  def change
    create_table :pristavs do |t|
      t.string :fio
      t.string :phone

      t.timestamps
    end
  end
end
