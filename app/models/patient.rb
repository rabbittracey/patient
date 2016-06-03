class Patient < ActiveRecord::Base
<<<<<<< HEAD
=======
  has_many :immunizations
  has_many :patient_medications
  has_many :appointments
  has_many :providers, through: :appointments
  belongs_to :user
>>>>>>> 53c800659cbf8b39a02eb3f95211a9eb2c7dab1b
end
