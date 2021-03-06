module SessionsHelper
  def log_in user
    session[:user_id] = user.id
  end



   # GET current_user 
  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  def log_out
    session.delete(:user_id)
    reset_session
    @current_user = nil
  end

  # Check user has logged in before ? 
  def logged_in?
    current_user.present?
  end


end
