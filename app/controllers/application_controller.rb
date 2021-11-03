class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private
  def require_signin
    if current_user.nil?
      session[:intended_url] = request.url
      redirect_to new_session_path, alert: "Sign in first!"
    end
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    current_user == user
  end

  def require_admin
    if current_user_admin? == false
      redirect_to root_url, alert: "Unauthorized Access!"
    end
  end

  def current_user_admin?
    current_user && current_user.admin?
  end

  helper_method :current_user_admin?

  helper_method :current_user

  helper_method :current_user?

end
