json.array!(@patient_profile_allergies) do |patient_profile_allergy|
  json.extract! patient_profile_allergy, :id
  json.url patient_profile_allergy_url(patient_profile_allergy, format: :json)
end
