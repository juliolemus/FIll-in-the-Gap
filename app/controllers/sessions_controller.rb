class SessionsController < ApplicationController

  def index
    redirect_to sign_up_url
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to posts_url, :notice => "Logged in!"
    else
      redirect_to sessions_url
      flash.now.alert = "Invalid email or password, please sign up"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
