class CreatePatientProfileProceduresHospitolizations < ActiveRecord::Migration
  def change
    create_table :patient_profile_procedures_hospitolizations do |t|



    t.string   :procedure_name, limit: 200
    t.string   :description,    limit: 2000
    t.datetime :procedure_date
    t.integer  :patient_id


      t.timestamps null: false
    end
    add_foreign_key :patient_profile_procedures_hospitolizations, :patients
  end
end
