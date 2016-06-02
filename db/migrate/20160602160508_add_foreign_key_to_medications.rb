class AddForeignKeyToMedications < ActiveRecord::Migration
  def change
    add_foreign_key :medications, :patients
  end
end
