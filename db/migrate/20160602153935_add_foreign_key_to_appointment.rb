class AddForeignKeyToAppointment < ActiveRecord::Migration
  def change
  	add_foreign_key :appointments, :patients
  end
end
