class AddIndexToPatientImmunization < ActiveRecord::Migration
  def change
     add_index :patient_immunizations, [:patient_id, :created_at]
  end
end
