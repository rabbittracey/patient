class ChangePatient < ActiveRecord::Migration
  def change
    add_foreign_key :patients, :users
    add_foreign_key :providers, :users
  end
end
