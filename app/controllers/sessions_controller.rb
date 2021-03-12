class SessionsController < ApplicationController
  skip_before_action :redirect_if_not_logged_in

  def index 
  end

  def new 
  end

  def create 
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password]) 
      session[:user_id] = @user.id 
        redirect_to user_path(@user.id)
    else
      redirect_to login_path
    end
  end

  
  def destroy 
    session.clear
    redirect_to root_path
  end

end 