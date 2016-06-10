class PatientProfileSymptomsController < ApplicationController

	def new

    @profile_symptom=PatientProfileSymptom.new
  	end

  def index
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @profile_symptoms=@patient.patient_profile_symptoms.all
  end






  def create
    @profile_symptom=PatientProfileSymptom.new(patientsymptom_params)
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @profile_symptom.patient_id=@patient.id
    if @profile_symptom.save
      redirect_to patient_profile_symptoms_path
    else
      render 'new'
    end
  end


  def show

    @profile_symptom=PatientProfileSymptom.find_by_id(params[:id])
  end
  def edit



    @profile_symptom=PatientProfileSymptom.find_by_id(params[:id])
  end

  def update
    @profile_symptom=PatientProfileSymptom.find_by_id(params[:id])
    if @profile_symptom.update(patientsymptom_params)
      redirect_to @profile_symptom
    else
      render 'edit'
    end



  end
  def destroy
    @profile_symptom=PatientProfileSymptom.find_by_id(params[:id])
    @profile_symptom.destroy
    redirect_to intake_index_path

  end


  private


  def patientsymptom_params
    params.require(:patient_profile_symptom).permit(:symptom_name, :symptom_description)
  end
end
