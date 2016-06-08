class AddColumnToAllergy < ActiveRecord::Migration
  def change

    add_column :patient_profile_allergies, :patient_id, :integer
    add_column :patient_profile_allergies, :allergy_name, :string
    add_column :patient_profile_allergies, :reaction, :string
    add_column :patient_profile_allergies, :created_at, :datetime
    add_column :patient_profile_allergies, :updated_at, :datetime



    add_foreign_key :patient_profile_allergies, :patients
  end
end
