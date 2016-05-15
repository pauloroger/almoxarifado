class UsersController < ApplicationController
  
  def index
  	@grid = UsersGrid.new(params[:users_grid]) do |scope|
			scope.page params[:page]
		end
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new users_params

  	if @user.save
      gflash :success => "Salvo com sucesso"
      redirect_to users_path
    else
      gflash :now, :error => @user.errors.full_messages.join('<br>')
      render 'new'
    end

  end

  private
  def users_params
  	params.require(:user).permit(
  		:login,
  		:password
  	)
  end

end
