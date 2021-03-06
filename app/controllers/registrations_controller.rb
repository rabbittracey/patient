class RegistrationsController < Devise::RegistrationsController





    # The path used after sign up. You need to overwrite this method
    # in your own RegistrationsController.

    protected

    def after_sign_up_path_for(user)
      #this can be defined based on the user type
      if user.user_type=="1"
        @patient=Patient.create(user_id: user.id)
        intake_index_path
        # patient_path(user)
      else
        @provider=Provider.create(user_id:user.id)
        provider_home_path(@provider)
      end
    end

    private

    def sign_up_params
      params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation,:country,
      :prefix,:postfix,:dob,:gender,:home_address1,:home_address2,
      :home_phone_number,:user_type)
    end

    def account_update_params
      params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation,:country,
                                   :prefix,:postfix,:dob,:gender,:home_address1,:home_address2,
                                   :home_phone_number,:user_type)
    end



  end

