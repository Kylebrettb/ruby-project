class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    if auth.nil?

  	@user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id   
  		redirect_to '/hotels'
  	else
  		redirect_to '/login'
  	end
    else
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
    u.name = auth['info']['name'] 
    u.email = auth['info']['email']
    u.password = SecureRandom.hex
    end
    session[:user_id] = @user.id 
    redirect_to '/hotels' 
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
