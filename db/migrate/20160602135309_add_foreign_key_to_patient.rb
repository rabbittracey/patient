class AddForeignKeyToPatient < ActiveRecord::Migration
  def change
  end
  add_index :patients, :user_id
end
