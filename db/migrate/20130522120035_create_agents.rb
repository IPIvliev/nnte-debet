class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :e_mail
      t.string :predsedatel
      t.string :predsedatel_phone
      t.string :buhgalter
      t.string :buhgalter_phone
      t.string :dogovor_number
      t.text :primechanie

      t.timestamps
    end
  end
end
