class AddColumnToMedication < ActiveRecord::Migration
  def change
    add_column :medications, :patient_id, :integer
    add_foreign_key :medications, :patients
  end
end
