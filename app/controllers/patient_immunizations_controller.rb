class PatientPatientImmunizationsController < ApplicationController

  def new
    @patientimmunization=PatientImmunization.new
  end

  def index
    @patientimmunizations=PatientImmunization.all

  end

  def create
    @patientimmunization=PatientImmunization.new(patientimmunization_params)

    if @patientimmunization.save
      redirect_to @patientimmunization
    else
      render 'new'
    end
  end


  def show
    @patientimmunization=PatientImmunization.find(params[:id])
  end
  def edit
    @patientimmunization=PatientImmunization.find(params[:id])
  end

  def update
    @patientimmunization=PatientImmunization.find(params[:id])
    if @patientimmunization.update(patientimmunization_params)
      redirect_to @patientimmunization
    else
      render 'edit'
    end



  end
  def destroy
    @patientimmunization=PatientImmunization.find(params[:id])
    @patientimmunization.destroy
    redirect_to patientimmunizations_path

  end


  private
  def patientimmunization_params
    params.require(:patientimmunization).permit(:patient_id, :administrator, :date_administered, :repatientimmunization_due_date, :notes, :ndc,  :cpt_code,  :cvx_codx, :hcpcs_code)
  end


end
