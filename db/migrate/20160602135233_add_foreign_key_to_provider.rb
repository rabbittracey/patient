class AddForeignKeyToProvider < ActiveRecord::Migration
  def change
  end

  add_index :providers, :user_id
end
