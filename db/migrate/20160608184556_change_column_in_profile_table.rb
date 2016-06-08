class ChangeColumnInProfileTable < ActiveRecord::Migration
  def change
    change_column :patient_profile_procedures_hospitolizations, :patient_id, :string
  end
end
