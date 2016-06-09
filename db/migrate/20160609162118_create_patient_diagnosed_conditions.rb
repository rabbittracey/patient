class CreatePatientDiagnosedConditions < ActiveRecord::Migration
  def change
    create_table :patient_diagnosed_conditions do |t|

      t.string :condition_name, limit: 200
      t.string :condition_description, limit: 2000
      t.string :date_diagnosed
      t.integer :patient_id

      t.timestamps null: false
    end
    add_foreign_key :patient_diagnosed_conditions, :patients
  end
end
