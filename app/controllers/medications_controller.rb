class ImmunizationsController < ApplicationController



  def new
    @medication=Immunization.new
  end

  def index
    @medications=Immunization.all

  end

  def create
    @medication=Immunization.new(medication_params)

    if @medication.save
      redirect_to @medication
    else
      render 'new'
    end
  end


  def show
    @medication=Immunization.find(params[:id])
  end
  def edit
    @medication=Immunization.find(params[:id])
  end

  def update
    @medication=Immunization.find(params[:id])
    if @medications.update(medication_params)
      redirect_to @medication
    else
      render 'edit'
    end



  end
  def destroy
    @medication=Immunization.find(params[:id])
    @medication.destroy
    redirect_to medications_path

  end


  private
  def medication_params
    params.require(:medication).permit(:patient_id, :administrator, :date_administered, :remedication_due_date, :notes, :ndc,  :cpt_code,  :cvx_codx, :hcpcs_code)
  end




end
