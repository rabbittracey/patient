class RegistrationsController < Devise::RegistrationsController





    # The path used after sign up. You need to overwrite this method
    # in your own RegistrationsController.
    def after_sign_up_path_for(resource)
      flash[:notice]="Welcome! Please follow the steps"
      after_sign_in_path_for(resource)
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
