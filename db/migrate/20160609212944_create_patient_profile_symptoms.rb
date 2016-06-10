class CreatePatientProfileSymptoms < ActiveRecord::Migration
  def change
    create_table :patient_profile_symptoms do |t|



      t.string :symptom_name, limit: 200
      t.string :symptom_description, limit: 2000
      t.integer :patient_id

      t.timestamps null: false
    end
    add_foreign_key :patient_profile_symptoms, :patients
  end
end