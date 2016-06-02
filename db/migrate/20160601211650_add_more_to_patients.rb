class AddMoreToPatients < ActiveRecord::Migration
    def change

     
      
      add_column :patients, :middle_name,               :string
      add_column :patients, :home_phone_number,        :string
      add_column :patients, :cell_phone_number,        :string
      add_column :patients, :hicn,                      :string
      add_column :patients, :secondary_insurance_id,    :string
      add_column :patients, :air_quality,               :string
      add_column :patients, :water_quality,             :string
      add_column :patients, :weather,                  :string
      add_column :patients, :smoker,                   :string
      add_column :patients, :tobacco_quantity_per_week,  :float
      add_column :patients, :alcohol_beverages_weekly,  :float
      add_column :patients, :weekly_sodium_intake,      :float
      add_column :patients, :hours_of_exercise_weekly,  :float
      add_column :patients, :daily_calories,            :float
      add_column :patients, :daily_sugar_intake,        :float
      add_column :patients, :daily_fat_intake ,         :float
      add_column :patients, :distance_from_pharmacy,      :integer
      add_column :patients, :distance_from_provider,      :integer
      add_column :patients, :sensor_use,                :string
      add_column :patients, :car_owner,                 :string
      add_column :patients, :child_had ,        :integer
      add_column :patients, :suspected_drug_abuse,        :integer
      add_column :patients, :marital_status,            :string
      add_column :patients, :patient_email,             :string
      add_column :patients, :patient_street_address,    :string
      add_column :patients, :patient_city,              :string
      add_column :patients, :patient_state,             :string
      add_column :patients, :patient_zipcode,          :string
      add_column :patients, :patient_image_file_path,   :string
    end

end
