class ApplicationController < ActionController::Base
  def authenticate_user
    if current_user.nil?
      redirect_to new_user_session_path, alert: "You must be signed in to do that."
    end
  end

  def current_user
    session[:current_email]
  end

  def sign_in_as(email)
    session[:current_email] = email
  end
end
