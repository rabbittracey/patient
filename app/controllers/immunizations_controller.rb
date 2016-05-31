class ImmunizationsController < ApplicationController


	
	def new
		@immunization=PatientImmunization.new
	end

	def index
		@immunizations=PatientImmunization.all

    end

    def create
    	@immunization=PatientImmunization.new(immunization_params)

    	if @immunization.save
    		redirect_to @immunization
        else 
            render 'new'
        end
    end		


    def show
    	@immunization=PatientImmunization.find(params[:id])
    end	
    def edit
    	@immunization=PatientImmunization.find(params[:id])
    end	

    def update
    	@immunization=PatientImmunization.find(params[:id])
    	if @immunizations.update(immunization_params)
    		 redirect_to @immunization
        else 
        	render 'edit'
        end



    end
    def destroy
    	@immunization=PatientImmunization.find(params[:id])
    	@immunization.destroy
    	redirect_to immunizations_path

    end


    private
       def immunization_params
       	    params.require(:immunization).permit(:patient_id, :administrator, :date_administered, :reimmunization_due_date, :notes, :ndc,  :cpt_code,  :cvx_codx, :hcpcs_code)
       	end



       	    	
end
