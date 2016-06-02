class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|

      t.timestamps null: false
      add_column :patients, :user_id, :integer

    end

  end
end
