class Patient < ActiveRecord::Base

  has_many :patient_immunizations,:dependent => :destroy
  has_many :patient_medications,:dependent => :destroy
  has_many :appointments
  has_many :providers, through: :appointments
  belongs_to :user
  validates :user_id, presence: true

end
