class AddSomethingToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :fname, :string
    add_column :patients, :lname, :string
  end
end
