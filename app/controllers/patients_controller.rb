class PatientsController < ApplicationController


  def home
    @patient=Patient.find(params[:id])
    @user = @patient.user

  end

  def contact


  end
  def about


  end



end
