class RegistrationsController < Devise::RegistrationsController





    # The path used after sign up. You need to overwrite this method
    # in your own RegistrationsController.
    def after_sign_up_path_for(resource)
      flash[:notice]="Welcome! Please follow the steps"
      after_sign_in_path_for(resource)
    end



  end

