class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications  do |t|
      t.string :drug_name,     limit: 200
      t.string :fda_status,    limit: 100
      t.string :ttddrugid,     limit: 100
      t.string :lnm,           limit: 200
      t.string :indication,    limit: 2000
      t.string :cas_number,    limit: 50
      t.string :formular,      limit: 2000
      t.string :pubchem_cid,   limit: 100
      t.string :pubchem_sid,   limit: 100
      t.string :chebi_id,      limit: 100
      t.string :superdrug_atc, limit: 1000
      t.string :superdrug_cas, limit: 100
      t.string :ndc,           limit: 25
      t.string :side_effects,  limit: 415
     
    

      t.timestamps null: false
    end
  end
end
