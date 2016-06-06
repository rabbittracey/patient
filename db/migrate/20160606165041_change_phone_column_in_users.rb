class ChangePhoneColumnInUsers < ActiveRecord::Migration
  def change
     change_column :users, :home_phone_number, :string
  end
end
