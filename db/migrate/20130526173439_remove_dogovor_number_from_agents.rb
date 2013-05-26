class RemoveDogovorNumberFromAgents < ActiveRecord::Migration
  def up
    remove_column :agents, :dogovor_number
  end

  def down
    add_column :agents, :dogovor_number, :string
  end
end
