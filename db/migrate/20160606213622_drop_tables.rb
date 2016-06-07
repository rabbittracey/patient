class DropTables < ActiveRecord::Migration
  def change
    drop_table :immunizations
    drop_table :medications

  end
end
