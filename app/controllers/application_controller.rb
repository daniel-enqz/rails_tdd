class ApplicationController < ActionController::Base
  def authenticate_user
    if !user_signed_in?
      redirect_to new_user_session_path, alert: "You must be signed in to do that."
    end
  end

  def user_signed_in?
    session[:current_email].present?
  end
end
