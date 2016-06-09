class PatientProfileProceduresHospitolizationsController < ApplicationController


  def new

    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.new
  end

  def index
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @profile_procedures_hospitolizations=@patient.patient_profile_procedures_hospitolization.all
  end






  def create
    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.new(profileprocedureshospitolization_params)
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @profile_procedures_hospitolization.patient_id=@patient.id
    if @profile_procedures_hospitolization.save
      redirect_to patient_profile_procedures_hospitolizations_path
    else
      render 'new'
    end
  end


  def show

    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.find_by_id(params[:id])
  end
  def edit



    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.find_by_id(params[:id])
  end

  def update
    @profile_procedures_hospitolization=PatientProfileProceduresHospitolization.find_by_id(params[:id])
    if @profile_procedures_hospitolization.update(profileprocedureshospitolization_params)
      redirect_to @profile_procedures_hospitolization
    else
      render 'edit'
    end



  end
  def destroy
    @profile_procedures_hospitolizationn=PatientProfileProceduresHospitolization.find_by_id(params[:id])
    @profile_procedures_hospitolization.destroy
    redirect_to intake_index_path

  end


  private


  def profileprocedureshospitolization_params
    params.require(:patient_profile_procedures_hospitolization).permit(:procedure_name, :description, :procedure_date)
  end



end
