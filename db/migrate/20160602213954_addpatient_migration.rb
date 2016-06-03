class AddpatientMigration < ActiveRecord::Migration
  def change

  	create_table :patient_medications  do |t|
      t.string :drug_name,     limit: 200
      t.datetime :date_started
      t.string :dosage,    		limit: 200
      t.string :frequency,     limit: 200
      t.string :prescribed_by,     limit: 200
      t.string :reminder,    limit: 2000
      t.integer :patient_id


      t.timestamps null: false
    end
  end
end


