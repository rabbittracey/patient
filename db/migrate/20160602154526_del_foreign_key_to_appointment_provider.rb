class DelForeignKeyToAppointmentProvider < ActiveRecord::Migration
  def change
  	remove_foreign_key :patient_immunizations, name: "provider_id"
  	add_foreign_key :appointments, :providers
  end
end
