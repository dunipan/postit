class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    #if authenticated user return user object else return nil

    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  #saves on resources by not hitting the database everytime.  Towards the end of lession 3 pt 2.
  end

  def logged_in?
    #takes current user method into boolean

    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:error] = "Must be logged in to do that"
      redirect_to root_path
    end
  end
end

#all from lesson 3 part 2
