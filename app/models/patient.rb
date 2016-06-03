class Patient < ActiveRecord::Base

  has_many :immunizations
  has_many :patient_medications
  has_many :appointments
  has_many :providers, through: :appointments
  belongs_to :user

end
