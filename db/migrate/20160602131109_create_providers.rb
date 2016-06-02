class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|

      t.timestamps null: false
      add_column :providers, :user_id, :integer
    end

  end
end
