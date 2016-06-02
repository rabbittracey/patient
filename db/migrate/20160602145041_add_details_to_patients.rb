class AddDetailsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :fname, :string
    add_column :patients, :lname, :string
    add_column :patients, :hicn, :tring
  end
end
