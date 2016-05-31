class CreateBasicInformations < ActiveRecord::Migration
  def change
    create_table :basic_informations do |t|
      t.string :firstname
      t.string :lastname
      t.string :prefix
      t.string :postfix
      t.string :gender
      t.date :birthday
      t.string :address1
      t.string :address2
      t.string :country
      t.int :phone_number
      t.string :email
      t.text :password
      t.text :password_confirmation

      t.timestamps null: false
    end
  end
end
