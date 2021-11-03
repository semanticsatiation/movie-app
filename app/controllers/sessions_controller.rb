class SessionsController < ApplicationController
  def new
  end

  def create
    #sign in using username?
    if user = User.authenticate(params[:email], params[:password]) #OR user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back, #{user.name}!"
      redirect_to(session[:intended_url] || user)
      session[:intended_url] = nil
    else
      flash[:alert] = "Incorrect email/password combination!"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been successfully signed out!"
    redirect_to root_path
  end

end
