class PatientsController < ApplicationController
  def index
    @patient=Patient.find_by_user_id(params[:id])

    @user = @patient.user
  end


  def new
    @patient=Patient.new
  end



  def create
    @patient=Patient.new(patient_params)

    if @patient.save
      redirect_to @patient
    else
      render 'new'
    end
  end


  def show
   # @patient=Patient.find(params[:id])
    @patient=Patient.find_by_user_id(params[:id])
    @user = @patient.user
  end
  def edit
    @patient=Patient.find_by_user_id(params[:id])
  end

  def update
    @patient=Patient.find_by_user_id(params[:id])
    if @patient.update(patient_params)
      redirect_to @patient
    else
      render 'edit'
    end



  end
  def destroy
    @patient=Patient.find_by_user_id(params[:id])
    @patient.destroy
    redirect_to patients_path

  end


  private
  def patient_params
    params.require(:patient).permit(:user_id)
  end


end
