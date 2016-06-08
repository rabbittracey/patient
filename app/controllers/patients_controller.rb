class PatientsController < ApplicationController


  def home
    @patient=Patient.find(params[:id])
    @user = @patient.user

  end



end
