class AddForeignKeyToAppointmentProvider < ActiveRecord::Migration
  def change
  	add_foreign_key :patient_immunizations, :providers
  	
  end
end
