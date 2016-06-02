class AddSomethingToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :fname, :string
    add_column :patients, :lname, :string
    add_column :patients, :user_id, :integer
  end
  add_index :patients, :user_id
end
