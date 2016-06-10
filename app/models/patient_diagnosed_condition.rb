class PatientDiagnosedCondition < ActiveRecord::Base
  belongs_to :patient
  validates :patient_id, presence: true
end