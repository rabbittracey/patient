class PatientSurveysController < ApplicationController
  def new
    @patientimmunization=PatientImmunization.new
  end

  def index
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @patientimmunizations=@patient.patient_immunizations.all
    #should perform the same as the above two lines
    #@patientimmunizations=PatientImmunization.find_by_patient_id(params[:id])

  end

  def create
    @patientimmunization=PatientImmunization.new(patientimmunization_params)
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @patientimmunization.patient_id=@patient.id
    if @patientimmunization.save
      redirect_to @patientimmunization
    else
      render 'new'
    end
  end


  def show


    @patientimmunization=PatientImmunization.find_by_id(params[:id])
  end
  def edit
    @patientimmunization=PatientImmunization.find_by_id(params[:id])
  end

  def update
    @patientimmunization=PatientImmunization.find_by_id(params[:id])
    if @patientimmunization.update(patientimmunization_params)
      redirect_to @patientimmunization
    else
      render 'edit'
    end



  end
  def destroy
    @patientimmunization=PatientImmunization.find_by_id(params[:id])
    @patientimmunization.destroy
    redirect_to patient_immunizations_path

  end


  private
  def patientimmunization_params
    params.require(:patient_immunization).permit( :administrator, :date_administered, :reimmunization_due_date, :notes, :ndc,  :cpt_code,  :cvx_codx, :hcpcs_code)
  end
end
