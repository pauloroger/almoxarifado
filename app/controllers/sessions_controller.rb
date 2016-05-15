class SessionsController < ApplicationController
  
  skip_before_filter :authenticate_user

  def new
  end

  def create
  	user = User.find_by_login params[:login]
  	if user && user.authenticate(params[:password])

  		session[:user_id] = user.id
			gflash :success => "Bem-vindo!"
  		redirect_to root_path
  		
  	else
  		gflash :now, :error => "Usuário não encontrado"
      render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	gflash :success => "Até logo"
  	redirect_to root_url
  end


end
