class PatientMedicationsController < ApplicationController
	def new
		@patientmedication=PatientMedication.new
	end

	def index
		@patientmedications=PatientMedication.all

    end

    def create
    	@patientmedication=PatientMedication.new(patient_medication_params)

    	if @patientmedication.save
    		redirect_to @patientmedication
        else 
            render 'new'
        end
    end		


    def show
    	@patientmedication=PatientMedication.find(params[:id])
    end	
    def edit
    	@patientmedication=PatientMedication.find(params[:id])
    end	

    def update
    	@patientmedication=PatientMedication.find(params[:id])
    	if @patientmedication.update(patient_medication_params)
    		 redirect_to @patientmedication
        else 
        	render 'edit'
        end



    end
    def destroy
    	@patientmedication=PatientMedication.find(params[:id])
    	@patientmedication.destroy
    	redirect_to patient_medications_path

    end

    private
       def patient_medication_params
       	    params.require(:patient_medication).permit(:drug_name, :date_started, :dosage, :frequency, :prescribed_by, :reminder,  :patient_id)
       	end
end
