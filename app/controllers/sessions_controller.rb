class SessionsController < ApplicationController

  def new
  end

  def create
    user = login(params[:email], params[:password])
    if user
      flash[:notice] = "Logged In!"
      binding.pry
      redirect_to user
    else
      flash.now.alert = "Email or passowrd was invalid."
      binding.pry
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "Logged Out!"
    redirect_to root_path
  end

end
