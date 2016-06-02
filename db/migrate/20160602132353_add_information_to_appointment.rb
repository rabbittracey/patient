class AddInformationToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :patient_id, :integer
    add_column :appointments, :provider_id, :integer
  end
  add_index :appointments, :patient_id
  add_index :appointments, :provider_id
end
