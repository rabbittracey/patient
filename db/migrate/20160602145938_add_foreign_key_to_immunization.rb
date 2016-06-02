class AddForeignKeyToImmunization < ActiveRecord::Migration
  def change
    add_foreign_key :patient_immunizations, :patients
  end
end
