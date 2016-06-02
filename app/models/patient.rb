class Patient < ActiveRecord::Base
  has_many :patient_immunizations
  has_many :appointments
  has_many :providers, through: :appointments
  belongs_to :user
end
