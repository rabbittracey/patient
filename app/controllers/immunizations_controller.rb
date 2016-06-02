class ImmunizationsController < ApplicationController


	
	def new
		@immunization=Immunization.new
	end

	def index
		@immunizations=Immunization.all

    end

    def create
    	@immunization=Immunization.new(immunization_params)

    	if @immunization.save
    		redirect_to @immunization
        else 
            render 'new'
        end
    end		


    def show
    	@immunization=Immunization.find(params[:id])
    end	
    def edit
    	@immunization=Immunization.find(params[:id])
    end	

    def update
    	@immunization=Immunization.find(params[:id])
    	if @immunizations.update(immunization_params)
    		 redirect_to @immunization
        else 
        	render 'edit'
        end



    end
    def destroy
    	@immunization=Immunization.find(params[:id])
    	@immunization.destroy
    	redirect_to immunizations_path

    end


    private
       def immunization_params
       	    params.require(:immunization).permit(:patient_id, :administrator, :date_administered, :reimmunization_due_date, :notes, :ndc,  :cpt_code,  :cvx_codx, :hcpcs_code)
       	end



       	    	
end
