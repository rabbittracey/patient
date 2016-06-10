class PageController < ApplicationController
  before_action :authenticate_user!, only: [:contact]
  def home
    @user=User.new
  end

  def contact
  end

  def about
    @user=current_user
    @patient=Patient.find_by_user_id(@user)
  end
end
