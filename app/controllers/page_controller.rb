class PageController < ApplicationController
  before_action :authenticate_user!, only: [:contact]
  def home
  end

  def contact
  end

  def about
  end
end
