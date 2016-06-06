class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  private

  def after_sign_in_path_for(user)
   #this can be defined based on the user type
    if user.user_type=="1"
       patients_path
    else
      providers_path
    end
  end

  def after_sign_out_path_for(user)
    page_home_path
  end

end
