class ChangeFamilyHistoryTable < ActiveRecord::Migration
  def change
    change_column :family_histories, :condition_id, :string
    change_column :family_histories, :relationship, :string
  end
end
