class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id   
  		redirect_to '/hotels'
  	else
  		redirect_to '/login'
  	end
  end

  def login
  end

  def welcome
  end
  def destroy
    session.delete(:user_id)
    redirect_to '/welcome'
  end
  private
 
  def auth
    request.env['omniauth.auth']
  end
end
