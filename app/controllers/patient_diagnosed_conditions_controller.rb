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
      redirect_to patient_diagnosed_conditions_path
    else
      render 'new'
    end
  end

  def show


    @diagnosed_condition=PatientDiagnosedCondition.find_by_id(params[:id])
  end
  def edit

    @diagnosed_condition=PatientDiagnosedCondition.find_by_id(params[:id])
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



    @diagnosed_condition.destroy
    respond_to do |format|
      format.html { redirect_to @diagnosed_conditions_url, notice: 'Patient profile allergy was successfully destroyed.' }
      format.json { head :no_content }
    end


  end


  private


  def diagnosedcondition_params
    params.require(:patient_diagnosed_condition).permit(:condition_name, :condition_description, :date_diagnosed)
  end

end
