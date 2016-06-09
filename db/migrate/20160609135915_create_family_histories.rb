class CreateFamilyHistories < ActiveRecord::Migration
  def change
    create_table :family_histories do |t|

      t.string :fname
      t.string :lname
      t.integer    :relationship
      t.integer    :condition_id
      t.integer    :patient_id
      t.string :reported_via
      t.string :reported_by
      t.date   :date_reported

      t.timestamps null: false
    end
    add_foreign_key :family_histories, :patients
  end
end
