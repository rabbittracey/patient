class PatientSurveysController < ApplicationController
  def new

    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)

    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.new
    @profile_procedures_hospitolization.patient_id=@patient.id
  end









  def create
    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.new(patientsurvey_params)
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @profile_procedures_hospitolization.patient_id=@patient.id
    if @profile_procedures_hospitolization.save
      redirect_to patient_home_path(@patient)
    else
      render 'new'
    end
  end


  def show

    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)



    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.find_by_patient_id(@patient.id)

  end
  def edit
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.find_by_patient_id(@patient.id)
  end

  def update
    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.find_by_id(params[:id])
    if @patientsurvey.update(patientsurvey_params)
      redirect_to patient_home_path(@patient)
    else
      render 'edit'
    end



  end
  def destroy
    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.find_by_id(params[:id])
    @profile_procedures_hospitolization.destroy
    redirect_to patient_home_path

  end


  private
  def patientsurvey_params
    params.require(:patient_profile_prodecures_hospitolizations).permit( :prodecure_name, :description, :procedure_date)
  end
end
