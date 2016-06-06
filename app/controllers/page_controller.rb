class PageController < ApplicationController
  before_action :authenticate_user!, only: [:contact]
  def home
    @user=User.new
  end

  def contact
  end

  def about
  end
end
