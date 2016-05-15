class UsersController < ApplicationController
  
  def index
  	@grid = UsersGrid.new(params[:users_grid]) do |scope|
			scope.page params[:page]
		end
  end

  def new
  
  end

  private
  def users_params
  	params.require(:user).permit(
  		:login,
  		:password
  	)
  end

end
