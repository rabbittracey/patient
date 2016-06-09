class PatientDiagnosedConditionsController < ApplicationController
	def new

    @diagnosed_condition=PatientDiagnosedCondition.new
  	end

	def index




    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @diagnosed_conditions=@patient.patient_diagnosed_conditions.all
  	end

  	def create
      params[:condition_name]
    @diagnosed_condition=PatientDiagnosedCondition.new(diagnosedcondition_params)
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @diagnosed_condition.patient_id=@patient.id
    if @diagnosed_condition.save
      redirect_to diagnosed_conditions_path
    else
      render 'new'
    end
  end

  def show


    @diagnosed_condition=PatientDiagnosedCondition.find_by_id(params[:id])
  end
  def edit

    @patient=Patient.find_by_id(params[:id])

    @diagnosed_condition=PatientDiagnosedCondition.find_by_patient_id(@patient.id)
  end

  def update
    @diagnosed_condition=PatientDiagnosedCondition.find_by_id(params[:id])
    if @diagnosed_condition.update(diagnosedcondition_params)
      redirect_to @diagnosed_condition
    else
      render 'edit'
    end



  end
  def destroy
    @diagnosed_condition=PatientDiagnosedCondition.find_by_id(params[:id])
    @diagnosed_condition.destroy
    redirect_to intake_index_path

  end


  private


  def diagnosedcondition_params
    params.require(:patient_diagnosed_condition).permit(:condition_name, :condition_description, :date_diagnosed)
  end

end
