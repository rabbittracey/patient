class Patient < ActiveRecord::Base


  has_many :appointments
  has_many :providers, through: :appointments
  belongs_to :user


  #this section is for the home page
  has_many :patient_immunizations,:dependent => :destroy
  has_many :patient_medications,:dependent => :destroy


  #this section is for the intake form
  has_many :patient_profile_procedures_hospitolization,:dependent => :destroy
  has_many :patient_profile_allergies,:dependent => :destroy
  has_many :family_histories, :dependent => :destroy
  has_many :patient_diagnosed_conditions, :dependent => :destroy
  has_many :patient_profile_symptoms, :dependent => :destroy

  validates :user_id, presence: true

end
