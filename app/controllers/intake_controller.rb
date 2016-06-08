class IntakeController < ApplicationController
  def index

    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
  end

end
