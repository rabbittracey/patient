class CreatePatientImmunizations < ActiveRecord::Migration
  def change
    create_table :patient_immunizations do |t|

    t.string :patient_id, limit: 30
    t.string :administrator,   limit: 30
    t.datetime :date_administered,    limit: 30
    t.datetime :reimmunization_due_date, limit: 50
    t.text :notes, limit: 500
    t.string :ndc,      limit: 20
    t.string :cpt_code,     limit: 30
    t.string :cvx_codx,     limit: 10
    t.string :hcpcs_code,   limit: 10
    t.timestamps


     
  end

    
  end
end
