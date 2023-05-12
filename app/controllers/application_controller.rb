class ApplicationController < ActionController::Base
  def authenticate_user
    if !signed_in?
      redirect_to new_user_session_path, alert: "You must be signed in to do that."
    end
  end

  def sign_in_as(email)
    session[:current_email] = email
  end

  def signed_in?
    current_user.signed_in?
  end

  def current_user
    User.new(session[:current_email])
  end
end
