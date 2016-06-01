class AddInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :prefix, :string
    add_column :users, :postfix, :string
    add_column :users, :gender, :string
    add_column :users, :dob, :date
    add_column :users, :home_address1, :string
    add_column :users, :home_address2, :string
    add_column :users, :home_phone_number, :integer
  end
end
