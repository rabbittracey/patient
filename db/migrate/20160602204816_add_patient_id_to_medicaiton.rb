class AddPatientIdToMedicaiton < ActiveRecord::Migration
  def change
    add_foreign_key :medications, :patients
  end
end
