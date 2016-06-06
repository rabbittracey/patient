class ProvidersController < ApplicationController
  def index
    @provider=Provider.find_by_user_id(params[:id])


  end


  def new
    @provider=Provider.new
  end



  def create
    @provider=Provider.new(provider_params)

    if @provider.save
      redirect_to @provider
    else
      render 'new'
    end
  end


  def show
    # @provider=Provider.find(params[:id])
    @provider=Provider.find_by_user_id(params[:id])
    @user = @provider.user
  end
  def edit
    @provider=Provider.find_by_user_id(params[:id])
  end

  def update
    @provider=Provider.find_by_user_id(params[:id])
    if @provider.update(provider_params)
      redirect_to @provider
    else
      render 'edit'
    end



  end
  def destroy
    @provider=Provider.find_by_user_id(params[:id])
    @provider.destroy
    redirect_to providers_path

  end


  private
  def provider_params
    params.require(:provider).permit(:user_id)
  end

end
