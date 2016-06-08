class ProvidersController < ApplicationController


  def home
    @provider=Provider.find(params[:id])
    @user = @provider.user

  end



end
