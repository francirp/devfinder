class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path, :notice => "Welcome, #{user.name}"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "You successfully logged out. Thanks for visiting."
  end

  # def create

  #   if User.find_by_email(params[:email]).present?
  #     session[:email] = params[:email]
  #     redirect_to posts_url, :notice => "Sign-in successful!"
  #   else
  #     redirect_to new_session_url, :notice => "We were unable to find that email."
  #   end
  # end




end
