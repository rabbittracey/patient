class AddForeignkeyToPatientMedication < ActiveRecord::Migration
  def change
  	add_foreign_key :patient_medications, :patients
  end
end
