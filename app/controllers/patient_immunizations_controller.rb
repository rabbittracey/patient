class PatientImmunizationsController < ApplicationController

  def new
    @patientimmunization=PatientImmunization.new
  end

  def index
    @patientimmunizations=PatientImmunization.find_by_patient_id(params[:id])

  end

  def create
    @patientimmunization=PatientImmunization.new

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
    redirect_to patientimmunizations_path

  end


  private
  def patientimmunization_params
    params.require(:patientimmunization).permit( :administrator, :date_administered, :reimmunization_due_date, :notes, :ndc,  :cpt_code,  :cvx_codx, :hcpcs_code)
  end


end
