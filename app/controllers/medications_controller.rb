class MedicationsController < ApplicationController



  def new
    @medication=Medication.new
  end

  def index
    @medications=Medication.all

  end

  def create
    @medication=Medication.new(immunization_params)

    if @medication.save
      redirect_to @medication
    else
      render 'new'
    end
  end


  def show
    @medication=Medication.find(params[:id])
  end
  def edit
    @medication=Medication.find(params[:id])
  end

  def update
    @medication=Medication.find(params[:id])
    if @medications.update(immunization_params)
      redirect_to @medication
    else
      render 'edit'
    end



  end
  def destroy
    @medication=Medication.find(params[:id])
    @medication.destroy
    redirect_to immunizations_path

  end


  private
  def immunization_params
    params.require(:immunization).permit(:patient_id, :administrator, :date_administered, :reimmunization_due_date, :notes, :ndc,  :cpt_code,  :cvx_codx, :hcpcs_code)
  end



end
