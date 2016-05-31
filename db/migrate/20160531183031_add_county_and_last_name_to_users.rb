class AddCountyAndLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :country, :string
    add_column :users, :lname, :string
  end
end
