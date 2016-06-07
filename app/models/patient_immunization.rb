class PatientImmunization < ActiveRecord::Base
   belongs_to :patient
   default_scope -> {order(created_at: :desc)}
  validates :patient_id, presence: true
  validates :administrator, presence: true
end
